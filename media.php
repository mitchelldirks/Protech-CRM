<?php 
include "config/koneksi.php";
if (isset($_GET['logout']) || !isset($_SESSION['id_user'])) {
  session_destroy();
  header('location:index.php');
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <?php include 'layout/head.php'; ?>
</head>
<body>
  <div class="tap-top"><i data-feather="chevrons-up"></i></div>
  <div class="page-wrapper compact-wrapper" id="pageWrapper">
    <?php include 'layout/header.php'; ?>
    <div class="page-body-wrapper sidebar-icon">
      <?php include 'layout/sidebar.php'; ?>
      <div class="page-body">
        <div class="container-fluid">
          <div class="page-title">
            <div class="row">
              <div class="col-6">
                <h3><?php echo isset($_GET['module']) ? ucwords($_GET['module']) : "Dashboard" ?></h3>
              </div>
              <div class="col-6">
                <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="index.html"><i data-feather="home"></i></a></li>
                  <li class="breadcrumb-item"> <?php echo isset($_GET['module']) ? '<a href="?module='.$_GET['module'].'">'.ucwords($_GET['module']).'</a>' : "Dashboard" ?></li>
                  <?php if (isset($_GET['act'])): ?>
                    <li class="breadcrumb-item active"><?php echo ucwords($_GET['act']) ?></li>
                  <?php endif ?>
                </ol>
              </div>
            </div>
          </div>
        </div>
        <div class="container-fluid">
          <div class="row">
            <?php
            $page = isset($_GET['module']) ? $_GET['module'] : 'dashboard.php';
            if (isset($_GET['module'])) {
              $act = isset($_GET['act']) ? '/'.$_GET['act'].'.php' : '/index.php';
            }else{
              $act = '';
            }
            include 'module/'.$page.$act;
            ?>
          </div>
        </div>
        <!-- Container-fluid Ends-->
      </div>
      <!-- footer start-->
      <footer class="footer">
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-12 footer-copyright text-center">
              <p class="mb-0">Copyright © <?php echo date('Y') ?> Protech Infomedia  </p>
            </div>
          </div>
        </div>
      </footer>
    </div>
  </div>
  <?php include "layout/script.php"; ?>
  <?php unset($_SESSION['flash']) ?>
</body>
</html>