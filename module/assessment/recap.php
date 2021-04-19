<?php $aksi="module/".$_GET['module']."/action.php";
?>
<div class="col-xl-12 col-lg-12 col-md-12 col-12 card layout-spacing">
  <div class="widget-content-area br-4">
    <?php if (!isset($_GET['bulan'])): ?>
     <div class=" mb-4 mt-4">
       <form method="GET">
        <input type="hidden" name="module" value="<?php echo $_GET['module'] ?>">
        <input type="hidden" name="act" value="<?php echo $_GET['act'] ?>">
        <div class="form-group">
          <label>Tahun</label>
          <select name="tahun" class="form-control" required>
            <?php 
            for ($i = date('Y'); $i >= 2019; $i--) {
              echo '<option value="'.$i.'">'.$i.'</option>';
            } ?>
          </select>
        </div>
        <div class="form-group">
          <label>Bulan</label>
          <select name="bulan" class="form-control" required>
            <?php 
            for ($i = 1; $i <= 12; $i++) {
              echo '<option value="'.$i.'" ';
              if (date('m')==$i) {echo "selected";}
              echo ' >'.bulan($i).'</option>';
            } ?>
          </select>
        </div>
        <div class="form-group">
          <button type="submit" class="btn btn-primary"><i class="fa fa-search"></i> Cek Kondisi</button>
        </div>
      </form>
    </div>
    <?php else: ?>
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
            $_GET['bulan'] = $_GET['bulan'] < 10 ? "0".$_GET['bulan'] : $_GET['bulan'];
            if ($_SESSION['level']=='admin') {
              $sql="SELECT * from absensi where tanggal like '".$_GET['tahun']."-".$_GET['bulan']."%' order by tanggal desc, keluar,masuk";
            }else{
              $sql="SELECT * from absensi where tanggal like '".$_GET['tahun']."-".$_GET['bulan']."%' and NIP = '".$_SESSION['NIP']."' order by keluar,masuk";
            }
            // print_r($sql);exit;
            $query=mysqli_query($conn,$sql);
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
    <?php endif ?>
  </div>
</div>