<?php 
$aksi="module/".$_GET['module']."/action.php";
$detail       = mysqli_fetch_array(mysqli_query($conn,"SELECT * FROM project where id = '".$_GET['id']."'"));
$assignee     = mysqli_fetch_array(mysqli_query($conn,"SELECT * FROM pegawai where id = '".$detail['assignee']."'"));
$kategori     = mysqli_fetch_array(mysqli_query($conn,"SELECT nama_kategori FROM kategori where id = '".$detail['kategori']."'"));
$project_case = array(1=>'Build','Bug','Feature','Doc & Adm');
$tracking     = array(1=>'back log','analisa desain sistem','pembangunan','testing','deploy','finish');
$priority     = array(1=>'low','normal','high','urgent');
$initial      = mysqli_fetch_array(mysqli_query($conn,"SELECT * FROM pegawai where id = '".$detail['created_by']."'"));
?>
<div class="card custom-card ">
  <div class="col-md-12 ">
    <span class="float-right">
      <a class="btn btn-primary btn-xs" href="?module=<?php echo $_GET['module'] ?>&act=edit&id=<?php echo $detail['id']; ?>"><i data-feather="edit"></i></a>
      <a class="btn btn-danger btn-xs" onclick="return confirm('Hapus data <?php echo $detail['nama_project'] ?>?')" href="<?php echo $aksi ?>?module=<?php echo $_GET['module'] ?>&act=delete&id=<?php echo $detail['id']; ?>"><i data-feather="trash"></i></a>
    </span>
    <div class="row">
      <div class="col-md-12 col-xs-12 form-group">
        <h2 style="color: #7669f8"><?php echo $detail['nama_project'] ?></h2>
        <p>Dibuat tambahkan oleh <a class="text-dark" href="?module=pegawai&act=detail&id=<?php echo $detail['created_by']; ?>"><strong><?php echo $initial['nama_pegawai'] ?></strong></a>. Terakhir disunting <strong><?php echo dateIndonesian($detail['updated_at']) ?></strong></p>
        <span class="form-control-plaintext bg-transparent border-bottom"></span>
      </div>
      <div class="col-md-6 col-xs-12 form-group">
        <label class="text-dark">Kategori</label>
        <span class="form-control-plaintext bg-transparent border-bottom"><?php echo ucwords($kategori['nama_kategori']) ?></span>
      </div>
      <div class="col-md-6 col-xs-12 form-group">
        <label class="text-dark">Case</label>
        <span class="form-control-plaintext bg-transparent border-bottom"><?php echo ucwords($project_case[$detail['project_case']]) ?></span>


      </select>
    </div>
    <div class="col-md-6 col-xs-12 form-group">
      <label class="text-dark">Priority</label>
      <span class="form-control-plaintext bg-transparent border-bottom"><?php echo ucwords($priority[$detail['priority']]) ?></span>

    </div>
    <div class="col-md-6 col-xs-12 form-group">
      <label class="text-dark">Tracker</label>

      <span class="form-control-plaintext bg-transparent border-bottom"><?php echo ucwords(isset($tracking[$detail['tracking']]) ? $tracking[$detail['tracking']] : "Hold") ?></span>
    </div>
    <div class="col-md-6 col-xs-12 form-group">
      <label class="text-dark">Assignee</label>
      <span class="form-control-plaintext bg-transparent border-bottom"><?php echo ucwords($assignee['nama_pegawai']) ?></span>
    </div>
    <div class="col-md-6 col-xs-12 form-group">
      <label class="text-dark">Nominal</label>
      <div class="input-group mb-3">
        <div class="input-group-prepend">
          <span class="input-group-text" id="nominal">Rp.</span>
        </div>
        <span class="form-control-plaintext bg-transparent border-bottom" style="padding-left: 10px;"><?php echo ucwords($detail['nominal']) ?></span>

      </div>
    </div>
    <div class="col-md-6 col-xs-12 form-group">
      <label class="text-dark">Start Date</label>
      <span class="form-control-plaintext bg-transparent border-bottom"><?php echo dateIndonesian($detail['start_date']) ?></span>


    </div>
    <div class="col-md-6 col-xs-12 form-group">
      <label class="text-dark">End Date</label>
      <span class="form-control-plaintext bg-transparent border-bottom"><?php echo dateIndonesian($detail['due_date']) ?></span>

    </div>
    <div class="col-md-12 col-xs-12 form-group">
      <label class="text-dark">Deskripsi</label>
      <?php echo $detail['deskripsi'] ?>
    </div>
  </div>
</div>
</div>
<div class="col-lg-12 mt-2 mb-5">

  asd
</div>