<link rel="stylesheet" type="text/css" href="assets/css/vendors/date-picker.css">
<div class="col-xl-6 xl-100 chart_data_left box-col-12">
  <div class="card">
    <div class="card-body p-0">
      <div class="row m-0 chart-main">
        <div class="col-xl-3 col-md-6 col-sm-6 p-0 box-col-6">
          <div class="media border-none align-items-center">
            <div class="media-body">
              <div class="right-chart-content">
                <h4>
                  <?php 
                  $absent=mysqli_num_rows(mysqli_query($conn,"SELECT * from absensi"));
                  $today=mysqli_num_rows(mysqli_query($conn,"SELECT * from pegawai join absensi on absensi.NIP=pegawai.NIP where absensi.tanggal='".date('Y-m-d')."'"));
                  $pegawai=mysqli_num_rows(mysqli_query($conn,"SELECT * from pegawai"));
                  echo round($today/$pegawai*100,2)."%";
                  ?>
                </h4>
                <span>Today Percentage</span>
              </div>
            </div>
          </div>
        </div>
        <div class="col-xl-3 col-md-6 col-sm-6 p-0 box-col-6">
          <div class="media align-items-center">
            <div class="media-body">
              <div class="right-chart-content">
                <h4><?php echo $today ?></h4><span>Today Absent </span>
              </div>
            </div>
          </div>
        </div>
        <div class="col-xl-3 col-md-6 col-sm-6 p-0 box-col-6">
          <div class="media align-items-center">
            <div class="media-body">
              <div class="right-chart-content">
                <h4><?php echo $absent ?></h4><span>Absent Recorded</span>
              </div>
            </div>
          </div>
        </div>
        <div class="col-xl-3 col-md-6 col-sm-6 p-0 box-col-6">
          <div class="media align-items-center">
            <div class="media-body">
              <div class="right-chart-content">
                <h4><?php echo $pegawai ?></h4><span>Employee</span>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<div class="col-xl-4 col-lg-4 col-xs-12  box-col-4">
  <div class="card o-hidden profile-greeting">
    <div class="card-body">
      <div class="media">
        <div class="badge-groups w-100">
          <div class="badge f-12"><i class="mr-1" data-feather="clock"></i><?php echo date('D, d F Y') ?></div>
          <div class="badge f-12"><i class="fa fa-spin fa-cog f-14"></i></div>
        </div>
      </div>
      <div class="greeting-user text-center">
        <div class="profile-vector"><img class="img-fluid" src="assets/images/dashboard/welcome.png" alt=""></div>
        <h4 class="f-w-600"><span id="greeting">Good Day Nigga</span> <span class="right-circle"><i class="fa fa-check-circle f-14 middle"></i></span></h4>
        <p><span> Today's Presence is</span></p>
        <div class="whatsnew-btn"><a class="btn btn-primary"> <?php echo round($today/$pegawai*100,2)."%"; ?></a></div>
        <div class="left-icon"><i class="fa fa-bell"> </i></div>
      </div>
    </div>
  </div>
</div>
<div class="col-xl-8 col-lg-8 col-xs-12  box-col-8">
  <div class="card p-2">
   <table class="table table-hover table-striped" id="basic-1">
    <thead>
      <td>#</td>
      <td>Pegawai</td>
      <td>Tanggal</td>
      <td>Masuk</td>
      <td>Keluar</td>
      <td>Izin</td>
    </thead>
    <tbody>
      <?php 
      if ($_SESSION['level']=='admin') {
        $query=mysqli_query($conn,"SELECT * from absensi where tanggal = '".date('Y-m-d')."' order by keluar,masuk");
      }else{
        $query=mysqli_query($conn,"SELECT * from absensi where NIP = '".$_SESSION['NIP']."' order by keluar,masuk");
      }
      ?>
      <?php $n=1; 
      foreach ($query as $row): 
        $pegawai=mysqli_fetch_array(mysqli_query($conn,"SELECT * from pegawai where NIP='$row[NIP]'"));
        ?>
        <tr>
          <td><?php echo $n++; ?></td>
          <td>
            <a href="?module=pegawai&act=detail&id=<?php echo $row['NIP']; ?>">
              <small class="text-muted"><?php echo $row['NIP'] ?> | </small>
              <?php echo $pegawai['nama_pegawai'] ?>
            </a>
          </td>
          <td>
            <?php echo date_format(date_create($row['tanggal']),"d F Y"); ?>
          </td>
          <td>
            <?php echo $row['masuk']!=null ? date_format(date_create($row['masuk']),"H:i"): ""; ?>
          </td>
          <td>
            <?php echo $row['keluar']!=null ? date_format(date_create($row['keluar']),"H:i"):""; ?>
          </td>
          <td>
            <?php echo strlen($row['izin'])>0 ? $row['izin'] : "-"; ?>
          </td>
        </tr>
      <?php endforeach ?>
    </tbody>
  </table>
</div>
