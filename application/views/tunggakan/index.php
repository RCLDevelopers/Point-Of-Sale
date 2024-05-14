<?php $this->load->view('element/head');?>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Dues
        <small>List Dues</small>
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
              <h3 class="box-title">Dues Data Table</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <form action="<?php echo site_url('tunggakan?search=true');?>" method="GET">
                <input type="hidden" class="form-control" name="search" value="true"/>
                <div class="box-body pad">
                  <div class="col-md-1">
                    <div class="form-group">
                      <label>&nbsp</label>
                      <a href="#" id="tunggakan-reset" class="btn btn-danger btn-sm pull-left">Reset</a>
                    </div>
                  </div>
                  <div class="col-md-3">
                    <div class="form-group">
                      <label for="id">Transaction Code</label>
                      <input type="text" class="form-control" name="id" value="<?php echo !empty($_GET['id']) ? $_GET['id'] : '';?>"/>
                    </div>
                  </div>
                  <div class="col-md-2">
                    <div class="form-group">
                      <label>Date From</label>
                      <select class="form-control" name="date_range" id="tunggakan-date-range">
                        <option value="">Select Days..</option>
                        <option value="7" <?php echo !empty($_GET['date_range']) && $_GET['date_range'] == 7 ? "selected":"";?>>7 Days</option>
                        <option value="14" <?php echo !empty($_GET['date_range']) && $_GET['date_range'] == 14 ? "selected":"";?>>14 Days</option>
                        <option value="30" <?php echo !empty($_GET['date_range']) && $_GET['date_range'] == 30 ? "selected":"";?>>30 Days</option>
                      </select>
                    </div>
                  </div>
                  <div class="col-md-2">
                    <div class="form-group">
                      <label>Date Transaction</label>
                      <div class="input-group date">
                        <input type="text" class="form-control datepicker" name="date_trx" value="<?php echo !empty($_GET['date_trx']) ? $_GET['date_trx'] : '';?>"/>
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
                      <a href="<?php echo site_url('tunggakan/export_csv').get_uri();?>" class="form-control btn btn-info"><i class="fa fa-file-csv"></i> Export Excel</a>
                    </div>
                  </div>
                </div>
              </form>
              <table id="example1" class="table table-bordered table-hover table-striped">
                <thead>
                <tr>
                  <th>Transaction ID</th>
                  <th>Customer Name</th>
                  <th>Total Item</th>
                  <th>Total Price</th>
                  <th>Due</th>
                  <th>Action</th>
                </tr>
                </thead>
                <tbody>
                <?php if(isset($tunggakans) && is_array($tunggakans)){ ?>
                  <?php foreach($tunggakans as $tunggakan){?>
                    <tr>
                      <td><?php echo $tunggakan->id;?></td>
                      <td><?php echo $tunggakan->customer_name;?></td>
                      <td><?php echo $tunggakan->total_item;?></td>
                      <td>$<?php echo number_format($tunggakan->total_price);?></td>
                      <td><?php echo $tunggakan->pay_deadline_date;?></td>
                      <td>
                        <a href="<?php echo site_url('tunggakan/detail').'/'.$tunggakan->id;?>" class="btn btn-xs btn-primary">Detail</a>
                        <a onclick="return confirm('Are you sure you want to delete this due?');" href="<?php echo site_url('tunggakan/delete').'/'.$tunggakan->id;?>" class="btn btn-xs btn-danger">Delete</a>
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