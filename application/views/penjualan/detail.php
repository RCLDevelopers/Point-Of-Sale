<?php $this->load->view('element/head');?>
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>
                Sales Transaction Details
                <small>Transaction Details</small>
            </h1>
        </section>

        <!-- Main content -->
        <section class="content">
            <div class="row">
                <div class="col-xs-12">
                    <ul class="nav nav-tabs">
                        <li role="presentation"><a href="<?php echo site_url('penjualan/create');?>">Add Sales</a></li>
                        <li role="presentation" class="active"><a href="<?php echo site_url('penjualan');?>">Sales List</a></li>
                    </ul>
                    <div class="box">
                        <div class="box-header">
                            <h3 class="box-title">Detailed Transaction Data <?php echo $details[0]->id;?></h3>
                            <div class="pull-right">
                                <span><a href="<?php echo site_url('penjualan');?>" class="btn btn-sm btn-default">Back</a></span>
                                <span><a href="<?php echo site_url('penjualan/print_now').'/'.$details[0]->id;?>" class="btn btn-sm btn-primary btnPrint"><i class="fa fa-print"></i> Print</a></span>
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
                                    <th>Due Date</th>
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
                                        <td><span class="alert-warning"><?php echo $details[0]->is_cash == 1 ? "" : $details[0]->pay_deadline_date;?></span></td>
                                        <td><?php echo $details[0]->date;?></td>
                                    </tr>
                                </tbody>
                            </table>
                            <hr />
                            <h4>Transaction Data</h4>
                            <table class="table table-bordered table-striped">
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