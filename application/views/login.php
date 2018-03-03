<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Help-ITs | Login</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">

  <link rel="shortcut icon" href="<?php echo base_url('assets/img/favicon.ico')?>" type="image/x-icon">
  <link rel="icon" href="<?php echo base_url('assets/img/favicon.ico')?>" type="image/x-icon">

  <!--Admin LTE -->
<link rel="stylesheet" href="<?php echo base_url();?>assets/adminLTE/css/AdminLTE.css">
  <!-- Bootstrap 3.3.6 -->
  <link rel="stylesheet" href="<?php echo base_url();?>assets/bootstrap/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="<?php echo base_url();?>assets/font-awesome/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="<?php echo base_url();?>assets/Ionicons/css/ionicons.min.css">
  <!-- bootstrap datepicker -->
  <link rel="stylesheet" href="<?php echo base_url();?>assets/bootstrap-datepicker/css/bootstrap-datepicker.min.css">
  <!-- Select2 -->
  <link rel="stylesheet" href="<?php echo base_url();?>assets/select2/css/select2.min.css">

  <script src="<?php echo base_url();?>assets/sweetalert/sweetalert.min.js"></script>

</head>
<body class="hold-transition login-page">
<div class="login-box">
  <div class="login-logo">
    <span class="logo-lg"><img style="margin-top:-5px;" width="48" src="<?php echo base_url('assets/img/help-it2.png')?>"></span>
    <b>Help</b>-ITs
  </div>
  <!-- /.login-logo -->
  <div class="login-box-body">
    <p class="login-box-msg">Silahkan login untuk memulai</p>

    <form action="<?php echo base_url('login/proses'); ?>" method="post">
      <?php
        if($this->session->flashdata('psn_error')){
          $pesan = $this->session->flashdata('psn_error');
          echo '<script>';
          echo 'swal("'. $pesan .'", {icon: "error", button:false, timer:1500});';
          echo '</script>';
        }
      ?>
      <?php
        if(validation_errors()){
          $pesan = "Kolom username dan password harus diisi!";
          echo '<script>';
          echo 'swal("'. $pesan .'", {icon: "error", button:false, timer:1500});';
          echo '</script>';
        }
      ?>

      <div class="form-group has-feedback">
        <input type="text" name="username" class="form-control" placeholder="Username" autofocus="true">
        <span class="fa fa-user form-control-feedback"></span>
      </div>
      <div class="form-group has-feedback">
        <input type="password" name="password" class="form-control" placeholder="Password">
        <span class="fa fa-lock form-control-feedback"></span>
      </div>
      <div class="row">
        <!-- /.col -->
        <div class="col-xs-4 pull-right">
          <button type="submit" id="btn_login" class="btn btn-primary pull-right"><i class="fa fa-sign-in"></i> Log In</button>
        </div>
        <!-- /.col -->
      </div>
    </form>

  </div>
  <br>
  <center><strong>Copyright &copy; 2018 <a href="http://www.zdienos.com">zdienos</a>.</strong> All rights
  reserved.</br><b>Version</b> 1.2.0</center>
  <!-- /.login-box-body -->
</div>
<!-- /.login-box -->

<!-- jQuery 3 -->
<script src="<?php echo base_url();?>assets/jquery/jquery.min.js"></script>

<!-- Bootstrap 3.3.7 -->
<script src="<?php echo base_url();?>assets/bootstrap/js/bootstrap.min.js"></script>
<!-- sweetalert -->
<script src="<?php echo base_url();?>assets/sweetalert/sweetalert.min.js"></script>

</body>
</html>
