<?php 
$aksi="module/".$_GET['module']."/action.php";
$detail       = mysqli_fetch_array(mysqli_query($conn,"SELECT * FROM project where id = '".$_GET['id']."'"));
$assignee     = mysqli_fetch_array(mysqli_query($conn,"SELECT * FROM pegawai where id = '".$detail['assignee']."'"));
$kategori     = mysqli_fetch_array(mysqli_query($conn,"SELECT nama_kategori FROM kategori where id = '".$detail['kategori']."'"));

$initial      = mysqli_fetch_array(mysqli_query($conn,"SELECT * FROM pegawai where id = '".$detail['created_by']."'"));
?>
<div class="col-lg-12">
  <?php 
  if (isset($_SESSION['flash'])): ?>
    <div class="<?php echo $_SESSION['flash']['class']; ?> mt-3 mb-3"> 
      <i class="<?php echo $_SESSION['flash']['icon'] ?>"></i> <?php echo $_SESSION['flash']['label']; ?>
      <button type="button" class="close" data-dismiss="alert" aria-label="Close"> <span aria-hidden="true">×</span> </button>
    </div>
  <?php endif ?>
</div>
<div class="card custom-card ">
  <div class="col-md-12 ">
    <span class="float-right">
      <a class="btn btn-primary btn-xs" href="?module=<?php echo $_GET['module'] ?>&act=edit&id=<?php echo $detail['id']; ?>"><i data-feather="edit"></i></a>
      <a class="btn btn-danger btn-xs" onclick="return confirm('Hapus data <?php echo $detail['nama_project'] ?>?')" href="<?php echo $aksi ?>?module=<?php echo $_GET['module'] ?>&act=delete&id=<?php echo $detail['id']; ?>"><i data-feather="trash"></i></a>
    </span>
    <div class="row">
      <div class="col-md-12 col-xs-12 form-group">
        <h2 style="color: #7669f8"><?php echo $detail['nama_project'] ?></h2>
        <p>Dibuat oleh <a class="text-dark" href="?module=pegawai&act=detail&id=<?php echo $detail['created_by']; ?>"><strong><?php echo $initial['nama_pegawai'] ?></strong></a>. Terakhir disunting <strong><?php echo dateIndonesian($detail['updated_at']) ?></strong></p>
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
  <style type="text/css">
    .uk-timeline .uk-timeline-item .uk-card {
      border-radius: 15px;
    }
    .uk-timeline .uk-timeline-item {
      display: flex;
      position: relative;
    }
    .uk-timeline .uk-timeline-item::before {
      background: #dadee4;
      content: "";
      height: 100%;
      left: 19px;
      position: absolute;
      top: 20px;
      width: 2px;
      z-index: -1;
    }
    .uk-timeline .uk-timeline-item .uk-timeline-icon .uk-badge {
      margin-top: 20px;
      width: 40px;
      height: 40px;
      border-radius: 15px;
    }
    .uk-timeline .uk-timeline-item .uk-timeline-content {
      -ms-flex: 1 1 auto;
      flex: 1 1 auto;
      padding: 0 0 0 1rem;
    }
  </style>
  <?php 
  $logs=mysqli_query($conn,"SELECT * from project_log where project_id = '$_GET[id]' group by created_at order by created_at desc");
  // print_r(mysqli_fetch_array($logs));exit;
  ?>
  <div class="uk-container uk-padding">
    <div class="uk-timeline">
      <?php $no=1;
      foreach ($logs as $log): 
        $assignee     = mysqli_fetch_array(mysqli_query($conn,"SELECT * FROM pegawai where id = '".$log['created_by']."'"));
        ?>
        <div class="uk-timeline-item">
          <div class="uk-timeline-icon">
            <span class="uk-badge"><span uk-icon="check"></span></span>
          </div>
          <div class="uk-timeline-content">
            <div class="uk-card uk-card-default uk-margin-medium-bottom uk-overflow-auto">
              <div class="uk-card-header">
                <div class="uk-grid-small uk-flex-middle" uk-grid>
                  <h3 class="uk-card-title"><a class="text-dark" href="?module=pegawai&act=detail&id=<?php echo $detail['created_by']; ?>"><strong><?php echo ucwords($assignee['nama_pegawai']) ?></strong></a> melakukan kontribusi <?php echo timeElapsed($log['created_at'],true) ?></h3>
                  <span class="uk-label uk-label-primary uk-margin-auto-left">#<?php echo $no++;//echo $log['field'] ?></span>
                </div>
              </div>
              <div class="uk-card-body">
                <?php 
                $sub_logs=mysqli_query($conn,"SELECT * from project_log where project_id = '$_GET[id]' and created_at = '".$log['created_at']."'");
                foreach ($sub_logs as $sl): ?>
                  <p class="uk-text-dark"><?php echo $sl['text'] ?></p>
                <?php endforeach ?>
              </div>
            </div>
          </div>
        </div>
      <?php endforeach ?>
    </div>
  </div>
</div>