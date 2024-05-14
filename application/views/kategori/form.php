<?php $this->load->view('element/head');?>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper" xmlns="http://www.w3.org/1999/html">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Category Form
        <small>Add Category</small>
      </h1>
    </section>

    <!-- Main content -->
    <section class="content">
	
      <div class="row">
        <div class="col-xs-12">
          <ul class="nav nav-tabs">
            <li role="presentation" class="active"><a href="<?php echo site_url('kategori/create');?>">Add Category</a></li>
            <li role="presentation"><a href="<?php echo site_url('kategori');?>">List Category</a></li>
          </ul>
		  <div class="box box-info">
            <div class="box-header with-border">
              <h3 class="box-title">Category</h3>
              <?php if($this->session->flashdata('form_false')){?>
                <div class="alert alert-danger text-center">
                  <strong><?php echo $this->session->flashdata('form_false');?></strong>
                </div>
              <?php } ?>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
            <?php if(!empty($kategori)){?>
            <form class="form-horizontal" method="POST" action="<?php echo site_url('kategori/save').'/'.$kategori['id'];?>">
            <?php }else{?>
            <form class="form-horizontal" method="POST" action="<?php echo site_url('kategori/save');?>">
            <?php } ?>
              <div class="box-body">
                <div class="col-md-6">
                  <div class="form-group">
                    <label class="col-sm-4 control-label" for="kode">Category Code</label>
                    <div class="col-sm-8">
                      <input type="text" name="category_id" value="<?php echo !empty($kategori) ? $kategori['id'] : '';?>" id="kode_kategori" class="form-control" autocomplete="off" required/>
                      <span class="help-inline label label-danger" id="status_kode"></span>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-4 control-label" for="name">Category Name</label>
                    <div class="col-sm-8">
                      <input type="text" value="<?php echo !empty($kategori) ? $kategori['category_name'] : '';?>" name="category_name" placeholder="Category Name" id="name" class="form-control" required/>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-4 control-label" for="address">Description</label>
                    <div class="col-sm-8">
                      <textarea name="category_desc" placeholder="Description" id="desc" class="form-control"/><?php echo !empty($kategori) ? $kategori['category_desc'] : '';?></textarea>
                    </div>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <label class="col-sm-4 control-label" for="date">Date</label>
                    <div class="col-sm-8">
                      <input type="text" value="<?php echo !empty($kategori) ? $kategori['date'] : date('Y-m-d H:i:s');?>" id="date" class="form-control" disabled/>
                      <input type="hidden" name="category_date" value="<?php echo !empty($kategori) ? $kategori['date'] : date('Y-m-d H:i:s');?>" id="category_date" class="form-control"/>
                    </div>
                  </div>
                </div>
              </div>
              <!-- /.box-body -->
              <div class="box-footer">
                <div class="col-md-3 col-md-offset-4">
                  <a class="btn btn-danger" href="<?php echo site_url('kategori');?>">Cancel</a>
                  <button class="btn btn-success pull-right" type="submit">Save</button>
                </div>
              </div>
              <!-- /.box-footer -->
            </form>
          </div>
		</div>
        <!-- /.col -->
      </div>
	  <!-- row -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
<?php $this->load->view('element/footer');?>