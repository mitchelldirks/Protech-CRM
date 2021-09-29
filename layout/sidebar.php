<div class="sidebar-wrapper">
  <div class="logo-wrapper">
    <a href="?">
      <img src="assets/images/logo/protech.png" style="max-width: 100px;margin-bottom: -12px;margin-top: -12px">
      <span class="text-dark pull-right" style="">
        <strong>CRM</strong>
      </span>
    </a>
    <!-- <div class="back-btn"><i class="fa fa-angle-left"></i></div> -->
    <!-- <div class="toggle-sidebar"> -->
      <!-- <i class="status_toggle middle sidebar-toggle" data-feather="grid"> </i> -->
      <!-- </div> -->
    </div>
    <nav class="sidebar-main">
      <div class="left-arrow" id="left-arrow"><i data-feather="arrow-left"></i></div>
      <div id="sidebar-menu">
        <ul class="sidebar-links custom-scrollbar">
          <li class="back-btn"><a href="index.html"><img class="img-fluid" src="assets/images/logo/logo-icon.png" alt=""></a>
            <div class="mobile-back text-right"><span>Back</span><i class="fa fa-angle-right pl-2" aria-hidden="true"></i></div>
          </li>
          <li class="sidebar-list">
            <a class="sidebar-link sidebar-title link-nav" href="?">
              <i data-feather="home"> </i>
              <span>Dashboard</span>
            </a>
          </li>
          <?php if ($_SESSION['level']=='admin'): ?>
            <li class="sidebar-list">
              <a class="sidebar-link sidebar-title link-nav" href="?module=todo">
                <i data-feather="list"></i>
                <span>Todo</span>
              </a>
            </li>
            <li class="sidebar-list">
              <a class="sidebar-link sidebar-title link-nav" href="?module=project">
                <i data-feather="copy"> </i>
                <span>Project</span>
              </a>
            </li>
            <li class="sidebar-list">
                    <a class="sidebar-link sidebar-title" href="#"><i data-feather="clipboard"></i><span>Pettycash</span></a>
                    <ul class="sidebar-submenu">
                      <li><a class="lan" href="?module=pettycash&act=income">Income</a></li>
                      <li><a class="lan" href="?module=pettycash&act=expense">Expense</a></li>
                      <li><a class="lan" href="?module=pettycash&act=balance">Balance</a></li>
                    </ul>
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
            <li class="sidebar-list">
              <a class="sidebar-link sidebar-title link-nav" href="?module=kategori">
                <i data-feather="clipboard"></i>
                <span>Kategori</span>
              </a>
            </li>
          <?php else: ?>
            <li class="sidebar-main-title">
              <div>
                <h6>Task</h6>
                <p>Profil & Project.</p>
              </div>
            </li>
            <li class="sidebar-list">
              <a class="sidebar-link sidebar-title link-nav" href="?module=pegawai&act=detail&id=<?php echo $_SESSION['id_user'] ?>">
                <i data-feather="user"> </i>
                <span>Profil</span>
              </a>
            </li>
            <li class="sidebar-list">
              <a class="sidebar-link sidebar-title link-nav" href="?module=todo">
                <i data-feather="list"></i>
                <?php $query=mysqli_query($conn,"SELECT * from todo where assignee = '".$_SESSION['id_user']."' and status = '0' ORDER BY updated_at desc");  ?>
                <?php if (mysqli_num_rows($query)>0): ?>
                  <span class="badge badge-primary text-light text-right float-right ">
                    <?php echo mysqli_num_rows($query) ?>
                  </span>
                <?php endif ?>
                <span>Todo</span>
              </a>
            </li>
            <li class="sidebar-list">
              <a class="sidebar-link sidebar-title link-nav" href="?module=project">
                <i data-feather="copy"> </i>
                <?php $query=mysqli_query($conn,"SELECT * from project where assignee = '".$_SESSION['id_user']."' and tracking < ".count($tracking)." ORDER BY updated_at desc");  ?>
                <?php if (mysqli_num_rows($query)>0): ?>
                  <span class="badge badge-primary text-light text-right float-right ">
                    <?php echo mysqli_num_rows($query) ?>
                  </span>
                <?php endif ?>
                <span>My Project</span>
              </a>
            </li>
          <?php endif ?>
          <li class="sidebar-list ">
            <a class="sidebar-link sidebar-title link-nav bg-danger text-white text-light" href="?logout">
              <i class="text-white text-light" data-feather="home"> </i>
              <span class="text-white text-light">Logout</span>
            </a>
          </li>
        </ul>
      </div>
      <div class="right-arrow" id="right-arrow"><i data-feather="arrow-right"></i></div>
    </nav>
  </div>