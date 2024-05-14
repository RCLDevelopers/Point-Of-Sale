<?php $this->load->view('element/head');?>
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>
            Unpaid Transaction Details
                <small>Detail Transaction</small>
            </h1>
        </section>

        <!-- Main content -->
        <section class="content">
            <div class="row">
                <div class="col-xs-12">
                    <ul class="nav nav-tabs">
                        <li role="presentation" class="active"><a href="<?php echo site_url('tunggakan');?>">List Dues</a></li>
                    </ul>
                    <div class="box">
                        <div class="box-header">
                            <h3 class="box-title">Dues Data Detail <?php echo $details[0]->id;?> <span class="bg-green"><?php echo $details[0]->is_cash == 1 ? "SUDAH LUNAS" : "";?></span></h3>
                            <div class="pull-right">
                                <span><a href="<?php echo site_url('tunggakan');?>" class="btn btn-sm btn-default">Back</a></span>
                            </div>
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body">
                            <table id="example1" class="table table-bordered table-striped table-hover">
                                <thead>
                                <tr>
                                    <th>Transaction ID</th>
                                    <th>Customer Name</th>
                                    <th>Total Item</th>
                                    <th>Total</th>
                                    <th>Method</th>
                                    <th>Dues</th>
                                    <th>Date</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td><?php echo $details[0]->id;?></td>
                                    <td><?php echo $details[0]->customer_name;?></td>
                                    <td><?php echo $details[0]->total_item;?></td>
                                    <td>$<?php echo number_format($details[0]->total_price);?></td>
                                    <td><?php echo $details[0]->is_cash == 1 ? "Cash" : "Credit";?></td>
                                    <td class="bg-red"><i><?php echo $details[0]->pay_deadline_date;?></i></td>
                                    <td><?php echo $details[0]->date;?></td>
                                </tr>
                                </tbody>
                            </table>
                            <hr />
                            <h4>Transaction Data</h4>
                            <table class="table table-bordered table-striped table-hover">
                                <thead>
                                <tr>
                                    <th>Product Name</th>
                                    <th>Category</th>
                                    <th>Quantity</th>
                                    <th>Price/item</th>
                                    <th>SubTotal</th>
                                </tr>
                                </thead>
                                <tbody>
                                <?php if(isset($details) && is_array($details)){ ?>
                                    <?php foreach($details as $transaksi){?>
                                        <tr>
                                            <td><?php echo $transaksi->product_name;?></td>
                                            <td><?php echo $transaksi->category_name;?></td>
                                            <td><?php echo $transaksi->quantity;?></td>
                                            <td>$<?php echo number_format($transaksi->price_item);?></td>
                                            <td>$<?php echo number_format($transaksi->subtotal);?></td>
                                        </tr>
                                    <?php } ?>
                                <?php } ?>
                                </tbody>
                                <tfoot>
                                <tr>
                                    <th colspan="4" align="center">Total</th>
                                    <th>$<?php echo number_format($transaksi->total_price);?></th>
                                </tr>
                                </tfoot>
                            </table>
                            <?php if($details[0]->is_cash == 0){?>
                                <div class="text-center">
                                    <a href="<?php echo site_url('tunggakan/update_lunas').'/'.$details[0]->id;?>" onclick="return confirm('Sure mark this as paid off?');" class="btn btn-success">Mark As Paid</a>
                                </div>
                            <?php }?>
                        </div>
                        <!-- /.box-body -->
                    </div>
                    <!-- /.box -->
                </div>
                <!-- /.col -->
            </div>
            <!-- row -->
        </section>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->
<?php $this->load->view('element/footer');?>