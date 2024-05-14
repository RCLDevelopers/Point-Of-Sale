<body class="hold-transition skin-purple sidebar-mini">
<div class="wrapper">
  <!-- Main Header -->
  <header class="main-header">

    <!-- Logo -->
    <a href="<?php echo site_url();?>" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><b>P</b>OS</span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><b>POS</b> CI</span>
    </a>

    <!-- Header Navbar -->
    <nav class="navbar navbar-static-top" role="navigation">
      <!-- Sidebar toggle button-->
      <!-- <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
        <span class="sr-only">Toggle navigation</span>
      </a> -->
      <!-- Navbar Right Menu -->
      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">


          <!-- User Account Menu -->
          <li class="dropdown user user-menu">
            <!-- Menu Toggle Button -->
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <!-- The user image in the navbar-->
              <img src="<?php echo $this->user_photo;?>" class="user-image" alt="User Image">
              <!-- hidden-xs hides the username on small devices so only the image appears. -->
              <span class="hidden-xs"><?php echo $this->username;?></span>
            </a>
            <ul class="dropdown-menu">
              <!-- The user image in the menu -->
              <li class="user-header">
                <img src="<?php echo $this->user_photo;?>" class="img-circle" alt="User Image">

                <p>
                  <?php echo $this->username;?>
                  
                  <small>Point Of Sale System</small>
                </p>
              </li>
              <!-- Menu Body -->
              
              <!-- Menu Footer-->
              <li class="user-footer">
                <div class="pull-left">
                  <!--<a href="#" class="btn btn-default btn-flat">Profile</a>-->
                </div>
                <div class="pull-right">
                  <a href="<?php echo site_url('auth/logout');?>" class="btn btn-danger btn-flat"><i class="fa fa-power-off"></i> Logout</a>
                </div>
              </li>
            </ul>
          </li>
          <!-- Control Sidebar Toggle Button -->
          <li>
           <!-- <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>-->
          </li>
        </ul>
      </div>
    </nav>
  </header>