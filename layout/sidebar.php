<div class="sidebar-wrapper">
  <div class="logo-wrapper"><a href="?">CV. Rajawali Graphics Art</a>
    <div class="back-btn"><i class="fa fa-angle-left"></i></div>
    <div class="toggle-sidebar"><i class="status_toggle middle sidebar-toggle" data-feather="grid"> </i></div>
  </div>
  <div class="logo-icon-wrapper"><a href="?">RGA</a></div>
  <nav class="sidebar-main">
    <div class="left-arrow" id="left-arrow"><i data-feather="arrow-left"></i></div>
    <div id="sidebar-menu">
      <ul class="sidebar-links custom-scrollbar">
        <li class="back-btn"><a href="index.html"><img class="img-fluid" src="assets/images/logo/logo-icon.png" alt=""></a>
          <div class="mobile-back text-right"><span>Back</span><i class="fa fa-angle-right pl-2" aria-hidden="true"></i></div>
        </li>
        <!-- <li class="sidebar-list">
          <label class="badge badge-success">2</label><a class="sidebar-link sidebar-title" href="#"><i data-feather="home"></i><span class="lan-3">Dashboard              </span></a>
          <ul class="sidebar-submenu">
            <li><a class="lan-4" href="index.html">Default</a></li>
            <li><a class="lan-5" href="dashboard-02.html">Ecommerce</a></li>
          </ul>
        </li> -->
        <li class="sidebar-list">
          <a class="sidebar-link sidebar-title link-nav" href="?">
            <i data-feather="home"> </i>
            <span>Dashboard</span>
          </a>
        </li>

        <?php if ($_SESSION['level']=='admin'): ?>

          <li class="sidebar-list">
            <a class="sidebar-link sidebar-title link-nav" href="?module=assessment">
              <i data-feather="copy"> </i>
              <span>Assessment</span>
            </a>
          </li>
          <li class="sidebar-list">
            <a class="sidebar-link sidebar-title link-nav" href="?module=assessment&act=recap">
              <i data-feather="calendar"> </i>
              <span>Recap</span>
            </a>
          </li>
          <li class="sidebar-main-title">
            <div>
              <h6>Master</h6>
              <p>Pegawai & Jabatan.</p>
            </div>
          </li>
          <li class="sidebar-list">
            <a class="sidebar-link sidebar-title link-nav" href="?module=pegawai">
              <i data-feather="user"> </i>
              <span>Pegawai</span>
            </a>
          </li>
          <li class="sidebar-list">
            <a class="sidebar-link sidebar-title link-nav" href="?module=jabatan">
              <i data-feather="briefcase"></i>
              <span>Jabatan</span>
            </a>
          </li>
          <?php else: ?>
            <li class="sidebar-main-title">
              <div>
                <h6>Absensi</h6>
                <p>Profil & Assessment.</p>
              </div>
            </li>
            <li class="sidebar-list">
              <a class="sidebar-link sidebar-title link-nav" href="?module=pegawai&act=detail&id=<?php echo $_SESSION['NIP'] ?>">
                <i data-feather="user"> </i>
                <span>Profil</span>
              </a>
            </li>
            <?php 

            $sql="SELECT * from absensi where NIP = '".$_SESSION['NIP']."' and tanggal = '".date('Y-m-d')."'";
            $query=mysqli_query($conn,$sql);
            $data=mysqli_fetch_array($query);
            ?>
            <?php if ($data['keluar']==null && $data['izin']==null): ?>
              <li class="sidebar-list">
                <a class="sidebar-link sidebar-title link-nav" href="?module=assessment&act=create">
                  <i data-feather="copy"> </i>
                  <span>Assessment</span>
                </a>
              </li>
            <?php endif ?>
            <li class="sidebar-list">
              <a class="sidebar-link sidebar-title link-nav" href="?module=assessment">
                <i data-feather="copy"> </i>
                <span>History</span>
              </a>
            </li>
          <?php endif ?>
        </ul>
      </div>
      <div class="right-arrow" id="right-arrow"><i data-feather="arrow-right"></i></div>
    </nav>
  </div>