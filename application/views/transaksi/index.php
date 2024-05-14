<?php $this->load->view('element/head');?>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Purchase Transaction
        <small>List Transaction</small>
      </h1>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-xs-12">
          <ul class="nav nav-tabs">
            <li role="presentation"><a href="<?php echo site_url('transaksi/create');?>">Add Transaction</a></li>
            <li role="presentation" class="active"><a href="<?php echo site_url('transaksi');?>">List Transaction</a></li>
          </ul>
          <div class="box">
            <div class="box-header">
              <h3 class="box-title">Transaction Data Table</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <form action="<?php echo site_url('transaksi?search=true');?>" method="GET">
                <input type="hidden" class="form-control" name="search" value="true"/>
                <div class="box-body pad">
                  <div class="col-md-3">
                    <div class="form-group">
                      <label for="id">Transaction Code</label>
                      <input type="text" class="form-control" name="id" value="<?php echo !empty($_GET['id']) ? $_GET['id'] : '';?>"/>
                    </div>
                  </div>
                  <div class="col-md-2">
                    <div class="form-group">
                      <label>Date From</label>
                      <div class="input-group date">
                        <input type="text" class="form-control datepicker" name="date_from" value="<?php echo !empty($_GET['date_from']) ? $_GET['date_from'] : '';?>"/>
                      </div>
                    </div>
                  </div>
                  <div class="col-md-2">
                    <div class="form-group">
                      <label>Date End</label>
                      <div class="input-group date">
                        <input type="text" class="form-control datepicker" name="date_end" value="<?php echo !empty($_GET['date_end']) ? $_GET['date_end'] : '';?>"/>
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
                      <a href="<?php echo site_url('transaksi/export_csv').get_uri();?>" class="form-control btn btn-info"><i class="fa fa-file-csv"></i> Export Excel</a>
                    </div>
                  </div>
                </div>
              </form>
              <table id="example1" class="table table-bordered table-striped table-hover">
                <thead>
                <tr>
                  <th>Transaction ID</th>
                  <th>Supplier Name</th>
                  <th>Total Item</th>
                  <th>Total Price</th>
                  <th>Date</th>
                  <th>Action</th>
                </tr>
                </thead>
                <tbody>
                <?php if(isset($transaksis) && is_array($transaksis)){ ?>
                  <?php foreach($transaksis as $transaksi){?>
                    <tr>
                      <td><?php echo $transaksi->id;?></td>
                      <td><?php echo $transaksi->supplier_name;?></td>
                      <td><?php echo $transaksi->total_item;?></td>
                      <td>$<?php echo number_format($transaksi->total_price);?></td>
                      <td><?php echo $transaksi->date;?></td>
                      <td>
                        <a href="<?php echo site_url('transaksi/detail').'/'.$transaksi->id;?>" class="btn btn-xs btn-primary">Detail</a>
                        <a onclick="return confirm('Are you sure you want to delete this transaction?');" href="<?php echo site_url('transaksi/delete').'/'.$transaksi->id;?>" class="btn btn-xs btn-danger">Delete</a>
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