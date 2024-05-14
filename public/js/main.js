var $el = $("body");
(function($) {
    $(document).ready(function(){
        $("#kode_produk").on("keyup",function(e){
            e.preventDefault();
            var kode = $(this).val();
            var kode = kode.toUpperCase();
            $(this).val(kode);
            $.ajax({
                url: $("base").attr("url") + 'produk/check_id',
                data: {
                    'id' : kode
                },
                type: 'POST',
                success: function(data){
                    if(data == 'unavailable'){
                        $("#kode_produk").addClass("status-error");
                        $("#status_kode").text('ID Code Not Available, Please Try Another!!');
                    }else{
                        $("#kode_produk").removeClass("status-error");
                        $("#status_kode").text('');
                    }
                },
                error: function(){
                    alert('Something Error');
                }
            });
        });
       $("#kode_kategori").on("keyup",function(e){
           e.preventDefault();
           var kode = $(this).val();
           var kode = kode.toUpperCase();
           $(this).val(kode);
           $.ajax({
               url: $("base").attr("url") + 'kategori/check_id',
               data: {
                   'id' : kode
               },
               type: 'POST',
               success: function(data){
                   if(data == 'unavailable'){
                       $("#kode_kategori").addClass("status-error");
                       $("#status_kode").text('ID Code Not Available, Please Try Another!!');
                   }else{
                       $("#kode_kategori").removeClass("status-error");
                       $("#status_kode").text('');
                   }
               },
               error: function(){
                   alert('Something Error');
               }
           });
       });
        $("#kode_transaksi").on("keyup",function(e){
            e.preventDefault();
            var kode = $(this).val();
            var kode = kode.toUpperCase();
            var origin = $(this).attr('data-origin');
            $(this).val(kode);
            if(origin !== kode) {
                $.ajax({
                    url: $("base").attr("url") + 'transaksi/check_id',
                    data: {
                        'id': kode
                    },
                    type: 'POST',
                    success: function (data) {
                        if (data == 'unavailable') {
                            $("#kode_transaksi").addClass("status-error");
                            $("#kode_transaksi").attr("data-attr", "false");
                            $("#status_kode").text('ID Code Not Available, Please Try Another!!');
                        } else {
                            $("#kode_transaksi").removeClass("status-error");
                            $("#kode_transaksi").attr("data-attr", "true");
                            $("#status_kode").text('');
                        }
                    },
                    error: function () {
                        alert('Something Error');
                    }
                });
            }
        });
        $("#transaksi_category_id").on("change",function(e){
            e.preventDefault();
            var url =  $("base").attr("url") + 'transaksi/check_category_id/' + this.value;
            $.get(url, function(data, status){
                if(status == 'success'){
                    var arr = $.parseJSON(data);
                    $("#transaksi_product_id").text("");
                    $("#sale_price").text("");
                    $.each(arr, function(key,value){
                        var default_value = '';
                        if(key == 0){
                            var default_value = '<option value="0">Please Select a Product</option>';
                        }
                        var opt_value = '<option value="'+value.id+'">'+value.product_name+'</option>';
                        $('#transaksi_product_id').append(default_value+opt_value);
                    });
                }
            });
        });
        $("#transaksi_product_id").on("change",function(e){
            e.preventDefault();
            var url =  $("base").attr("url") + 'transaksi/check_product_id/' + this.value;
            var type1 = '';
            var type2 = '';
            var type3 = '';
            $("#sale_price").text("");
            $.get(url, function(data, status) {
                if(status == 'success' && data != 'false') {
                    var value = $.parseJSON(data);
                    var val = value[0];
                    var sale_value = '<option value="' + val.sale_price + '">' + price(parseInt(val.sale_price)) + ' Default</option>';
                    if(val.sale_price_type1 != "0"){
                        var type1 = '<option value="' + val.sale_price_type1 + '">' + price(parseInt(val.sale_price_type1)) + ' Type 1 </option>';
                    }
                    if(val.sale_price_type2 != "0"){
                        var type2 = '<option value="' + val.sale_price_type2 + '">' + price(parseInt(val.sale_price_type2)) + ' Type 2</option>';
                    }
                    if(val.sale_price_type3 != "0") {
                        var type3 = '<option value="' + val.sale_price_type3 + '">' + price(parseInt(val.sale_price_type3)) + ' Type 3</option>';
                    }
                    $('#sale_price').append(sale_value+type1+type2+type3);
                }
            });
        });
    });
    $("#tambah-barang").on("click",function(e){
        e.preventDefault();

        var product_id = $("#transaksi_product_id").val();
        var quantity = $("#jumlah").val();
        var sale_price = $("#sale_price").val();
        if($('#harga_satuan_net').length){
            sale_price = $('#harga_satuan_net').unmask();
        }
        if(product_id !== null && sale_price !== null){
            $.ajax({
                url: $("base").attr("url") + 'transaksi/add_item',
                data: {
                    'product_id' : product_id,
                    'quantity' : quantity,
                    'sale_price' : sale_price
                },
                type: 'POST',
                beforeSend : function(){
                    $el.faLoading();
                },
                success: function(data){
                    var res = $.parseJSON(data);
                    $(".cart-value").remove();
                    $.each(res.data, function(key,value) {
                        var row_2 = "";
                        if($('#harga_satuan_net').length){
                            //row_2 = "colspan='2'";
                        }
                        var display = '<tr class="cart-value" id="'+ key +'">' +
                                    '<td>'+ value.category_name +'</td>' +
                                    '<td>'+ value.name +'</td>' +
                                    '<td>'+ value.qty +'</td>' +
                                    '<th '+row_2+'>$'+ price(value.subtotal) +'</th>' +
                                    '<td><span class="btn btn-danger btn-sm transaksi-delete-item" data-cart="'+ key +'">x</span></td>' +
                                    '</tr>';
                        $("#transaksi-item tr:last").after(display);
                    });
                    $("#total-pembelian").text('$'+price(res.total_price));
                    $("#transaksi-item").find("input[type=text], input[type=number]").val("0");
                    $el.faLoading(false);
                    console.log(res);
                },
                error: function(){
                    alert('Something Error');
                }
            });
        }else{
            alert("Please fill in all the boxes");
        }
    });
    $(document).on("click",".transaksi-delete-item",function(e){
        var rowid = $(this).attr("data-cart");
        $el.faLoading();
        $.get($("base").attr("url") + 'transaksi/delete_item/'+rowid,
            function(data,status){
                if(status == 'success'  && data != 'false'){
                    $("#"+rowid).remove();
                    console.log(data);
                    $("#total-pembelian").text('$'+data);
                    $el.faLoading(false);
                }                
            }
        );
    });
    $("#submit-transaksi").on('click',function(e){
        e.preventDefault();
        var status = false;
        var method = null;
        var arr = null;

        var transaction_id = $("#kode_transaksi").val();
        var supplier_id = $("#supplier_id").val();
        var status_id = $("#kode_transaksi").attr("data-attr");
        if(typeof transaction_id !== "undefined" && transaction_id != ""){
            status = true;
            method = "transaksi";
            arr = {
                'transaction_id': transaction_id,
                'supplier_id': supplier_id
            };
            console.log(arr);
        }

        // Penjualan
        var penjualan = penjualan_status();
        if(penjualan[0] == true){
            status = penjualan[0];
            method = penjualan[1];
            arr = penjualan[2];
        }

        // Retur Penjualan
        var retur_penjualan = retur_penjualan_status();
        if(retur_penjualan[0] == true){
            status = retur_penjualan[0];
            method = retur_penjualan[1];
            arr = retur_penjualan[2];
        }

        if(status == true) {
            $.ajax({
                url: $("#transaction-form").attr("action"),
                data: arr,
                type: 'POST',
                beforeSend: function () {
                    $el.faLoading();
                },
                success: function (data) {
                    var response = $.parseJSON(data);
                    $el.faLoading(false);
                    if(response.status == "ok"){
                        alert("Success!!");
                        window.location.href = $("base").attr("url") + method;
                    }else if(response.status == "limit"){
                        alert("The number of products you have selected is out of stock");
                    }else{
                        alert("An error occurred on the server, please try again");
                    }
                }
            });
        }else{
            alert("Please check your transaction code or supplier!");
        }
    });
    $('.datepicker-transaksi').datepicker({
        format: 'yyyy-mm-dd',
        autoclose: true
    });
    $('.datepicker').datepicker({
        format: 'yyyy-mm-dd',
        autoclose: true
    });
    $("#tunggakan-reset").on("click",function(e){
        e.preventDefault();
        $(this).closest('form').find("input[type=text], textarea").val("");
        $('#tunggakan-date-range option:eq(0)').prop('selected', true);
    });
    /*
    ** Retur Penjualan
     */
    $(".retur_penjualan_qty").on("keyup change",function(e){
        var id = $(this).attr("row-id");
        var qty = $(this).val();
        $.post(
             $("base").attr("url") + 'retur_penjualan/update_cart/'+id,
            {
                qty:qty
            },
            function(data,status){
                var res = $.parseJSON(data);
                $("#total-pembelian").text("$"+price(res.total));
            }
        );
    });


    /*
     ** Retur Purchase
     */
    $(".retur_purchase_qty").on("keyup change",function(e){
        var id = $(this).attr("row-id");
        var qty = $(this).val();
        $.post(
            $("base").attr("url") + 'retur_purchase/update_cart/'+id,
            {
                qty:qty
            },
            function(data,status){
                var res = $.parseJSON(data);
                $("#total-pembelian").text("$"+price(res.total));
            }
        );
    });

    function penjualan_status(){
        var data = false;
        var sales_id = $("#penjualan_id").val();
        var customer_id = $("#customer_id").val();
        var is_cash = $("#is_cash").val();
        if(typeof sales_id !== "undefined" && sales_id != ""){
            var status = true;
            var method = "penjualan";
            var arr = {
                'sales_id': sales_id,
                'customer_id': customer_id,
                'is_cash' : is_cash
            };
            data = [status,method,arr];
        }
        return data;
    }

    function retur_penjualan_status(){
        var data = false;
        var retur_id = $("#retur_id").val();
        var retur_code = $("#retur_code").val();
        var retur_date = $("#retur_date").val();
        var is_return = $("#is_return").val();
        var return_by = $("#return_by").val();
        if(typeof retur_id !== "undefined" && retur_code != ""){
            var status = true;
            var method = $("base").attr("class-attr");
            var arr = {
                'retur_id': retur_id,
                'retur_code': retur_code,
                'retur_date' : retur_date,
                'is_return' : is_return,
                'return_by' : return_by
            };
            data = [status,method,arr];
        }
        return data;
    }
    $(document).ready(function() {
        $(".btnPrint").printPage();
        $('.form-price-format').priceFormat({
            prefix: '$ ',
            centsSeparator: ',',
            thousandsSeparator: '.',
            centsLimit: 0
        });
        $('.discount-trx').bind("keyup change", function(e){
            //e.preventDefault();
            var next = parseInt($(this).attr('data-attr')) + 1;
            var disc = parseInt($(this).val());
            var disc_unmask = $(this).unmask();

            if(disc > 100){
                $(this).val("100");
            }
            if(disc > 0 || disc_unmask > 0){
                $("#disc_"+next).prop('disabled', false);
            }else{
                if(next == 2){
                    $("#disc_"+next).prop('disabled', true);
                    $("#disc_"+(next+1)).prop('disabled', true);
                }else{
                    $("#disc_"+next).prop('disabled', true);
                }
            }
            var sale_price = $("#sale_price").unmask();
            var disc1 = $("#disc_1").val();
            var disc2 = $("#disc_2").val();
            var disc3 = $("#disc_3").val();
            var final_price = count_discount(sale_price,disc1,disc2,disc3);
            $("#harga_satuan_net").val("$ "+price(final_price));
            //$("#harga_satuan_net").val(final_price);
        });
    });
})(this.jQuery);

function count_discount(val,disc1,disc2,disc3){
    var disc_one = val * (disc1 / 100);
    disc_one = val - disc_one;

    var disc_two = disc_one * (disc2 / 100);
    disc_two = disc_one - disc_two;

    var disc_three= disc_two * (disc3 / 100);
    disc_three = disc_two - disc_three;

    return disc_three;
}

function price(input){
    return (input).formatMoney(0, ',', ',');
}
Number.prototype.formatMoney = function(c, d, t){
    var n = this,
        c = isNaN(c = Math.abs(c)) ? 2 : c,
        d = d == undefined ? "." : d,
        t = t == undefined ? "," : t,
        s = n < 0 ? "-" : "",
        i = parseInt(n = Math.abs(+n || 0).toFixed(c)) + "",
        j = (j = i.length) > 3 ? j % 3 : 0;
    return s + (j ? i.substr(0, j) + t : "") + i.substr(j).replace(/(\d{3})(?=\d)/g, "$1" + t) + (c ? d + Math.abs(n - i).toFixed(c).slice(2) : "");
};
