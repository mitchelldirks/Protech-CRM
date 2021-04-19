<?php $aksi="module/".$_GET['module']."/action.php"; ?>
<div class="col-xl-12 col-lg-12 col-md-12 col-12 card layout-spacing">
  <?php 
  if (isset($_SESSION['flash'])): ?>
    <div class="<?php echo $_SESSION['flash']['class']; ?> mt-3 mb-3"> 
      <i class="<?php echo $_SESSION['flash']['icon'] ?>"></i> <?php echo $_SESSION['flash']['label']; ?>
      <button type="button" class="close" data-dismiss="alert" aria-label="Close"> <span aria-hidden="true">×</span> </button>
    </div>
  <?php endif ?>
  <div class="widget-content-area br-4">
    <!-- <span class="float-left">
      <a class="btn btn-primary ml-2 mb-4" href="?module=<?php echo $_GET['module'] ?>&act=create">Tambah <?php echo $_GET['module'] ?></a>
    </span> -->
    <div class="table-responsive mb-4 mt-4">


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
            $query=mysqli_query($conn,"SELECT * from absensi  order by tanggal desc, keluar,masuk");
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
  </div>
</div>
