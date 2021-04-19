<?php 
$detail  = mysqli_fetch_array(mysqli_query($conn,"SELECT * FROM pegawai where id = '".$_GET['id']."'"));
$jabatan  = mysqli_fetch_array(mysqli_query($conn,"SELECT * FROM jabatan where id = '".$detail['jabatan']."'"));
?>
<div class="col-md-4 col-lg-4 col-xl-4 box-col-6 col-xs-12 col-sm-6">
  <div class="card custom-card">
    <!-- <div class="card-header"><img class="img-fluid" src="assets/images/user-card/1.jpg" alt=""></div> -->
    <div class="card-profile"><img class="rounded-circle" src="assets/images/pegawai/<?php echo $detail['img'] ?>" alt=""></div>

    <div class="text-center profile-details">
      <h4><?php echo ucwords($detail['nama_pegawai']) ?></h4>
      <h6><?php echo ucwords($jabatan['nama_jabatan']) ?></h6>
    </div>
    <div class="card-footer row">
      <div class="col-4 col-sm-4">
        <h6>Bulan</h6>
        <h3 class="counter">9564</h3>
      </div>
      <div class="col-4 col-sm-4">
        <h6>Tahun</h6>
        <h3><span class="counter">49</span>K</h3>
      </div>
      <div class="col-4 col-sm-4">
        <h6>Total</h6>
        <h3><span class="counter">96</span>M</h3>
      </div>
    </div>
  </div>
</div>
<div class="col-md-8 col-lg-8 col-xl-8 col-xs-12 col-sm-6 box-col-6">
  <div class="card custom-card ">
    <div class="row">

     

      <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-xs-12 form-group">
        <label class="text-dark">Telpon</label>
        <input class="form-control-plaintext bg-transparent border-bottom" style="border-bottom: 1px solid lightblue"  readonly type="text"  name="tel" value="<?php echo $detail['tel']; ?>">
      </div>

      <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-xs-12 form-group">
        <label class="text-dark">Email</label>
        <input class="form-control-plaintext bg-transparent border-bottom" style="border-bottom: 1px solid lightblue"  readonly type="email"  name="email" value="<?php echo $detail['email']; ?>">
      </div>

      <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-xs-12 form-group">
        <label class="text-dark">Tempat Lahir</label>
        <input class="form-control-plaintext bg-transparent border-bottom" style="border-bottom: 1px solid lightblue"  readonly type="text"  name="pob" value="<?php echo $detail['tempatlahir']; ?>">
      </div>

      <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-xs-12 form-group">
        <label class="text-dark">Tanggal Lahir</label>
        <input class="form-control-plaintext bg-transparent border-bottom" style="border-bottom: 1px solid lightblue"  readonly type="date"  name="dob" value="<?php echo $detail['tanggallahir']; ?>">
      </div>
    </div>
  </div>
</div>
<div class="col-md-12 col-lg-12 col-xl-12 col-xs-12 col-sm-12 box-col-12">
  <div class="card custom-card ">
    <div class="table-responsive">
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
        <?php $query=mysqli_query($conn,"SELECT * from absensi where NIP = '".$_GET['id']."' order by tanggal desc,keluar,masuk"); ?>
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