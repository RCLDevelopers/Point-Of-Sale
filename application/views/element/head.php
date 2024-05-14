<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>POS_CI | Dashboard</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.6 -->
  <link rel="stylesheet" href="<?php echo base_url('public');?>/bootstrap/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="<?php echo base_url('public');?>/plugins/fontawesome/css/all.css">
  <link rel="stylesheet" href="<?php echo base_url('public');?>/plugins/ionic/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="<?php echo base_url('public');?>/dist/css/AdminLTE.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="<?php echo base_url('public');?>/plugins/iCheck/square/blue.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="<?php echo base_url('public');?>/dist/css/skins/_all-skins.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="<?php echo base_url('public');?>/plugins/iCheck/flat/blue.css">
  <!-- Morris chart -->
  <link rel="stylesheet" href="<?php echo base_url('public');?>/plugins/morris/morris.css">
  <!-- jvectormap
  <link rel="stylesheet" href="<?php echo base_url('public');?>/plugins/jvectormap/jquery-jvectormap-1.2.2.css"> -->
  <!-- Date Picker -->
  <link rel="stylesheet" href="<?php echo base_url('public');?>/plugins/datepicker/datepicker3.css">
  <!-- Daterange picker -->
  <link rel="stylesheet" href="<?php echo base_url('public');?>/plugins/daterangepicker/daterangepicker-bs3.css">
  <!-- bootstrap wysihtml5 - text editor -->
  <link rel="stylesheet" href="<?php echo base_url('public');?>/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">

  <link rel="stylesheet" href="<?php echo base_url('public');?>/css/fa-loading.css">
  <link rel="stylesheet" href="<?php echo base_url('public');?>/css/main.css">
  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <link rel="stylesheet" href="<?php echo base_url('public');?>/plugins/ie/html5shiv.min.js">
  <link rel="stylesheet" href="<?php echo base_url('public');?>/plugins/ie/respond.min.js">
  <![endif]-->
  <base url="<?php echo site_url();?>" class-attr="<?php echo $this->router->fetch_class();?>"/>
</head>
<?php if($this->is_login){?>
	<?php $this->load->view('element/header');?>
	<?php $this->load->view('element/sidebar');?> 
<?php } ?>
