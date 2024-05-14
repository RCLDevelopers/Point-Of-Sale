
  <!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">

    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">

      <!-- Sidebar user panel (optional) -->
      <div class="user-panel">
        <div class="pull-left image">
          <img src="<?php echo $this->user_photo;?>" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
          <p><?php echo $this->username;?></p>
          <!-- Status -->
          <a href="#"><i class="fas fa-circle text-success"></i> Online</a>
        </div>
      </div>

      <!-- search form (Optional) -->
      <form action="#" method="get" class="sidebar-form">
       <!-- <div class="input-group">
          <input type="text" name="q" class="form-control" placeholder="Search...">
              <span class="input-group-btn">
                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                </button>
              </span>
        </div> -->
      </form>
      <!-- /.search form -->

      <!-- Sidebar Menu -->
      <ul class="sidebar-menu">
        <!--<li class="header">HEADER</li>-->
        <!-- Optionally, you can add icons to the links -->
        <li class="<?php echo is_menu('home','dashboard');?>"><a href="<?php echo site_url();?>"><i class="fa fa-tachometer-alt" aria-hidden="true"></i> <span>Dashboard</span></a></li>
        <li class="treeview <?php echo is_menu('supplier');?>">
          <a href="#"><i class="fa fa-people-carry"></i> <span>Supplier</span> <i class="fa fa-angle-left pull-right"></i></a>
          <ul class="treeview-menu"> 
			<li class="<?php echo is_menu('supplier');?>"><a href="<?php echo site_url('supplier');?>"><i class="fa fa-people-carry" aria-hidden="true"></i> <span> List Supplier</span></a></li>
			<li class="<?php echo is_menu('supplier','create');?>"><a href="<?php echo site_url('supplier/create');?>"><i class="fa fa-plus-square" aria-hidden="true"></i> <span> Add Supplier</span></a></li>
          </ul>
        </li>
        <li class="treeview <?php echo is_menu('pelanggan');?>">
          <a href="#"><i class="fa fa-user-friends"></i> <span>Customer</span> <i class="fa fa-angle-left pull-right"></i></a>
          <ul class="treeview-menu">
            <li class="<?php echo is_menu('pelanggan');?>"><a href="<?php echo site_url('pelanggan');?>"><i class="fa fa-user-friends" aria-hidden="true"></i> <span>List Customer</span></a></li>
            <li class="<?php echo is_menu('pelanggan','create');?>"><a href="<?php echo site_url('pelanggan/create');?>"><i class="fa fa-plus-square" aria-hidden="true"></i> <span>Add Customer</span></a></li>
          </ul>
        </li>
        <li class="treeview <?php echo is_menu('kategori');?>">
          <a href="#"><i class="fa fa-th-list"></i> <span>Category</span> <i class="fa fa-angle-left pull-right"></i></a>
          <ul class="treeview-menu">
            <li class="<?php echo is_menu('kategori');?>"><a href="<?php echo site_url('kategori');?>"><i class="fa fa-th-list" aria-hidden="true"></i> <span>List Category</span></a></li>
            <li class="<?php echo is_menu('kategori','create');?>"><a href="<?php echo site_url('kategori/create');?>"><i class="fa fa-plus-square" aria-hidden="true"></i> <span>Add Category</span></a></li>
          </ul>
        </li>
        <li class="treeview <?php echo is_menu('produk');?>">
          <a href="#"><i class="fa fa-box-open"></i> <span>Product</span> <i class="fa fa-angle-left pull-right"></i></a>
          <ul class="treeview-menu">
            <li class="<?php echo is_menu('produk');?>"><a href="<?php echo site_url('produk');?>"><i class="fa fa-box-open" aria-hidden="true"></i> <span>List Product</span></a></li>
            <li class="<?php echo is_menu('produk','create');?>"><a href="<?php echo site_url('produk/create');?>"><i class="fa fa-plus-square" aria-hidden="true"></i> <span>Add Product</span></a></li>
          </ul>
        </li>
		
        <li class="treeview <?php echo is_menu('penjualan');?>">
          <a href="#"><i class="fa fa-cash-register"></i> <span>Sales Transaction</span> <i class="fa fa-angle-left pull-right"></i></a>
          <ul class="treeview-menu">
            <li class="<?php echo is_menu('penjualan');?>"><a href="<?php echo site_url('penjualan');?>"><i class="fa fa-chart-area" aria-hidden="true"></i> <span>List Sales</span></a></li>
            <li class="<?php echo is_menu('penjualan','create');?>"><a href="<?php echo site_url('penjualan/create');?>"><i class="fa fa-plus-square" aria-hidden="true"></i> <span>Add Sales</span></a></li>
          </ul>
        </li>

        <li class="treeview <?php echo is_menu('transaksi');?>">
          <a href="#"><i class="fa fa-receipt"></i> <span>Purchase Transactions</span> <i class="fa fa-angle-left pull-right"></i></a>
          <ul class="treeview-menu"> 
			<li class="<?php echo is_menu('transaksi');?>"><a href="<?php echo site_url('transaksi');?>"><i class="fa fa-chart-area" aria-hidden="true"></i> <span>List Transactions</span></a></li>
			<li class="<?php echo is_menu('transaksi','create');?>"><a href="<?php echo site_url('transaksi/create');?>"><i class="fa fa-plus-square" aria-hidden="true"></i> <span>Add Transactions</span></a></li>
          </ul>
        </li>
        
        <li class="<?php echo is_menu('tunggakan');?>"><a href="<?php echo site_url('tunggakan');?>"><i class="fa fa-coins" aria-hidden="true"></i> <span>List Dues</span></a></li>
        <li class="treeview <?php echo is_menu('retur_penjualan');?>">
          <a href="#"><i class="fa fa-undo"></i> <span>Sales Returns</span> <i class="fa fa-angle-left pull-right"></i></a>
          <ul class="treeview-menu">
            <li class="<?php echo is_menu('retur_penjualan');?>"><a href="<?php echo site_url('retur_penjualan');?>"><i class="fa fa-undo" aria-hidden="true"></i> <span>List Sales Returns</span></a></li>
            <li class="<?php echo is_menu('retur_penjualan','create');?>"><a href="<?php echo site_url('retur_penjualan/create');?>"><i class="fa fa-plus-square" aria-hidden="true"></i> <span>Add Sales Returns</span></a></li>
          </ul>
        </li>
        <li class="treeview <?php echo is_menu('retur_purchase');?>">
          <a href="#"><i class="fa fa-share"></i> <span>Return Purchase</span> <i class="fa fa-angle-left pull-right"></i></a>
          <ul class="treeview-menu">
            <li class="<?php echo is_menu('retur_purchase');?>"><a href="<?php echo site_url('retur_purchase');?>"><i class="fa fa-share" aria-hidden="true"></i> <span>List Return Purchase</span></a></li>
            <li class="<?php echo is_menu('retur_purchase','create');?>"><a href="<?php echo site_url('retur_purchase/create');?>"><i class="fa fa-plus-square" aria-hidden="true"></i> <span>Add Return Purchase</span></a></li>
          </ul>
        </li>
      </ul>
      <br />
      <br />
      <!-- /.sidebar-menu -->
    </section>
    <!-- /.sidebar -->
  </aside>
