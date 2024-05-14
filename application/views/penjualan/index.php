<?php $this->load->view('element/head');?>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
      Sales Transaction
        <small>List Transaction</small>
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
              <h3 class="box-title">Sales Datatable</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <form action="<?php echo site_url('penjualan?search=true');?>" method="GET">
                <input type="hidden" class="form-control" name="search" value="true"/>
                <div class="box-body pad">
                  <div class="col-md-3">
                    <div class="form-group">
                      <label for="id">Sales Code</label>
                      <input type="text" class="form-control" name="id" value="<?php echo !empty($_GET['id']) ? $_GET['id'] : '';?>"/>
                    </div>
                  </div>
                  <div class="col-md-2">
                    <div class="form-group">
                      <label>Date From</label>
                      <div class="input-group date">
                        <input type="text" class="form-control datepicker-transaksi" name="date_from" value="<?php echo !empty($_GET['date_from']) ? $_GET['date_from'] : '';?>"/>
                      </div>
                    </div>
                  </div>
                  <div class="col-md-2">
                    <div class="form-group">
                      <label>Date End</label>
                      <div class="input-group date">
                        <input type="text" class="form-control datepicker-transaksi" name="date_end" value="<?php echo !empty($_GET['date_end']) ? $_GET['date_end'] : '';?>"/>
                      </div>
                    </div>
                  </div>
                  <div class="col-md-2">
                    <div class="form-group">
                      <label for="submit">&nbsp</label>
                      <input type="submit" value="Search" class="form-control btn btn-warning">
                    </div>
                  </div>
                  <div class="col-md-2">
                    <div class="form-group">
                      <label for="submit">&nbsp</label>
                      <a href="<?php echo site_url('penjualan/export_csv').get_uri();?>" class="form-control btn btn-info"><i class="fa fa-file-csv"></i> Export Excel</a>
                    </div>
                  </div>
                </div>
              </form>
              <table id="example1" class="table table-bordered table-striped table-hover">
                <thead>
                <tr>
                  <th>Transaction ID</th>
                  <th>Customer Name</th>
                  <th>Total Item</th>
                  <th>Total Price</th>
                  <th>Payment Method</th>
                  <th>Date</th>
                  <th>Action</th>
                </tr>
                </thead>
                <tbody>
                <?php if(isset($penjualans) && is_array($penjualans)){ ?>
                  <?php foreach($penjualans as $penjualan){?>
                    <tr>
                      <td><?php echo $penjualan->id;?></td>
                      <td><?php echo $penjualan->customer_name;?></td>
                      <td><?php echo $penjualan->total_item;?></td>
                      <td>$<?php echo number_format($penjualan->total_price);?></td>
                      <td><?php echo $penjualan->is_cash == 1 ? "<span class='badge badge-success' style='background-color:green;'>Cash</span>" : "<span class='badge badge-warning' style='background-color:red;'>Credit</span>";?></td>
                      <td><?php echo $penjualan->date;?></td>
                      <td>
                        <a href="<?php echo site_url('penjualan/detail').'/'.$penjualan->id;?>" class="btn btn-xs btn-primary">Detail</a>
                        <a href="<?php echo site_url('penjualan/print_now').'/'.$penjualan->id;?>" class="btn btn-xs btn-warning btnPrint">Print</a>
                        <a onclick="return confirm('Are you sure you want to delete this sales?');" href="<?php echo site_url('penjualan/delete').'/'.$penjualan->id;?>" class="btn btn-xs btn-danger">Delete</a>
                      </td>
                    </tr>
                  <?php } ?>
                <?php } ?>
                </tbody>
              </table>
            </div>
            <!-- /.box-body -->
            <div class="text-center">
              <?php echo $paggination;?>
            </div>
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