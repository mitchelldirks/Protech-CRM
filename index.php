<?php session_start(); ?>
<!DOCTYPE html>


<html lang="en">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="Cuba admin is super flexible, powerful, clean &amp; modern responsive bootstrap 4 admin template with unlimited possibilities.">
  <meta name="keywords" content="admin template, Cuba admin template, dashboard template, flat admin template, responsive admin template, web app">
  <meta name="author" content="pixelstrap">
  <link rel="icon" href="assets/images/favicon.png" type="image/x-icon">
  <link rel="shortcut icon" href="assets/images/favicon.png" type="image/x-icon">
  <title>Login | CV.Rajawali Graphics Art</title>
  <!-- Google font-->
  <link href="https://fonts.googleapis.com/css?family=Rubik:400,400i,500,500i,700,700i&amp;display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,500,500i,700,700i,900&amp;display=swap" rel="stylesheet">
  <link rel="stylesheet" type="text/css" href="assets/css/fontawesome.css">
  <link rel="stylesheet" type="text/css" href="http://dny.web.id/skripsi/sinta/portal/vendor/font-awesome-4.7/css/font-awesome.min.css">
  <link rel="stylesheet" type="text/css" href="http://dny.web.id/skripsi/sinta/portal/vendor/font-awesome-5/css/fontawesome-all.min.css">
  <!-- ico-font-->
  <link rel="stylesheet" type="text/css" href="assets/css/vendors/icofont.css">
  <!-- Themify icon-->
  <link rel="stylesheet" type="text/css" href="assets/css/vendors/themify.css">
  <!-- Flag icon-->
  <link rel="stylesheet" type="text/css" href="assets/css/vendors/flag-icon.css">
  <!-- Feather icon-->
  <link rel="stylesheet" type="text/css" href="assets/css/vendors/feather-icon.css">
  <!-- Plugins css start-->
  <!-- Plugins css Ends-->
  <!-- Bootstrap css-->
  <link rel="stylesheet" type="text/css" href="assets/css/vendors/bootstrap.css">
  <!-- App css-->
  <link rel="stylesheet" type="text/css" href="assets/css/style.css">
  <link id="color" rel="stylesheet" href="assets/css/color-1.css" media="screen">
  <!-- Responsive css-->
  <link rel="stylesheet" type="text/css" href="assets/css/responsive.css">
</head>
<body style="background: url('assets/images/login/work.gif');">

  <!-- Page Body Start-->
  <div class="page-body-wrapper sidebar-icon" >
    <div class="page-body">
      <div class="container-fluid">
        <div class="row">
          <div class="col-xs-12 col-sm-8 col-md-7 col-lg-6 col-xl-5">
            <div class="row">
              <div class="col-sm-12">
                <div class="card">
                  <div class="card-header">
                    <h5>Login</h5>
                    <span>CV.Rajawali Graphics Art</span>
                  </div>
                  <div class="card-body">
                    <?php 
                    if (isset($_SESSION['flash'])): ?>
                      <div class="<?php echo $_SESSION['flash']['class']; ?> mt-3 mb-3"> 
                        <i class="<?php echo $_SESSION['flash']['icon'] ?>"></i> <?php echo $_SESSION['flash']['label']; ?>
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close"> <span aria-hidden="true">×</span> </button>
                      </div>
                    <?php endif ?>
                    <form class="theme-form" action="auth.php" method="POST">
                      <div class="form-group">
                        <label class="col-form-label pt-0">NIP</label>
                        <input class="form-control" name="username" type="text" placeholder="Masukan Nomor Pegawai" <?php 
                        if (isset($_SESSION['flash'])): ?>
                          value="<?php echo $_SESSION['flash']['username'] ?>"
                          <?php 
                          elseif (isset($_COOKIE['username'])): ?>
                            value="<?php echo $_COOKIE['username'] ?>"

                            <?php endif ?>>
                          </div>
                          <div class="form-group">
                            <label >Password</label>
                            <input class="form-control" name="password" type="password" placeholder="Password" <?php if (isset($_COOKIE['password'])): ?>
                            value="<?php echo $_COOKIE['password'] ?>"

                            <?php endif ?>>
                          </div>
                          <div class="form-group">

                            <div class="checkbox p-0">
                              <input id="dafault-checkbox" name="checkbox" type="checkbox">
                              <label class="mb-0" for="dafault-checkbox">Remember me</label>
                            </div>
                          </div>
                          <div class="form-group">

                            <button type="submit" class="btn btn-primary">Submit</button>
                          </div>
                        </form>
                      </div>
                      <div class="card-footer">
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <script src="assets/js/jquery-3.5.1.min.js"></script>
      <script src="assets/js/bootstrap/popper.min.js"></script>
      <script src="assets/js/bootstrap/bootstrap.js"></script>
      <script src="assets/js/icons/feather-icon/feather.min.js"></script>
      <script src="assets/js/icons/feather-icon/feather-icon.js"></script>
      <script src="assets/js/config.js"></script>
      <script src="assets/js/sidebar-menu.js"></script>
      <script src="assets/js/tooltip-init.js"></script>
      <script src="assets/js/script.js"></script>
    </body>
    <?php unset($_SESSION['flash']) ?>
    </html>