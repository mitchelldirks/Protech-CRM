<div class="page-header">
  <div class="header-wrapper row m-0">
    <form class="form-inline search-full" action="#" method="get">
      <div class="form-group w-100">
        <div class="Typeahead Typeahead--twitterUsers">
          <div class="u-posRelative">
            <input class="demo-input Typeahead-input form-control-plaintext w-100" type="text" placeholder="Search Cuba .." name="q" title="" autofocus>
            <div class="spinner-border Typeahead-spinner" role="status"><span class="sr-only">Loading...</span></div><i class="close-search" data-feather="x"></i>
          </div>
          <div class="Typeahead-menu"></div>
        </div>
      </div>
    </form>
    <div class="header-logo-wrapper">
      <div class="logo-wrapper"><a href="index.html"><img class="img-fluid" src="assets/images/logo/logo.png" alt=""></a></div>
      <div class="toggle-sidebar"><i class="status_toggle middle sidebar-toggle" data-feather="sliders"></i></div>
    </div>
    <div class="left-header col horizontal-wrapper pl-0">

    </div>
    <div class="nav-right col-8 pull-right right-header p-0">
      <ul class="nav-menus">

        <li class="maximize"><a class="text-dark" href="#!" onclick="javascript:toggleFullScreen()"><i data-feather="maximize"></i></a></li>
        <li class="profile-nav onhover-dropdown p-0 mr-0">
          <div class="media profile-media"><img class="b-r-10" width="30px" src="<?php echo strlen($_SESSION['img'])>0 ? "assets/images/pegawai/".$_SESSION['img'] : 'assets/images/dashboard/profile.jpg';?>" alt="">
            <div class="media-body"><span><?php echo ucwords($_SESSION['name']) ?>  <i class="fa fa-angle-down"></i></span>
              <!-- <p class="mb-0 font-roboto"></p> -->
            </div>
          </div>
          <ul class="profile-dropdown onhover-show-div">
            <?php if ($_SESSION['level']!='admin'): ?>

              <li><a href="?module=pegawai&act=edit"><i data-feather="user"></i><span>Account </span></a></li>
            <?php endif ?>
            <li><a href="?logout"><i data-feather="log-out"> </i><span>Logout</span></a></li>
          </ul>
        </li>
      </ul>
    </div>
    <script class="empty-template" type="text/x-handlebars-template"><div class="EmptyMessage">Your search turned up 0 results. This most likely means the backend is down, yikes!</div></script>
  </div>
</div>