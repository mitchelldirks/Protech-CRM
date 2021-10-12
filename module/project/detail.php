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
    <div class="row">
      <div class="col-md-12 col-xs-12">
        <span class="float-right">
          <a class="btn btn-success btn-xs" href="?module=<?php echo $_GET['module'] ?>&act=invoice&id=<?php echo $detail['id']; ?>"><i data-feather="paperclip"></i> <strong><sup>Invoice</sup></strong></a>
          <a class="btn btn-primary btn-xs" href="?module=<?php echo $_GET['module'] ?>&act=edit&id=<?php echo $detail['id']; ?>"><i data-feather="edit"></i></a>
          <a class="btn btn-danger btn-xs" onclick="return confirm('Hapus data <?php echo $detail['nama_project'] ?>?')" href="<?php echo $aksi ?>?module=<?php echo $_GET['module'] ?>&act=delete&id=<?php echo $detail['id']; ?>"><i data-feather="trash"></i></a>
        </span>
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
    <div class="col-md-6 col-xs-10 form-group">
      <label class="text-dark">Nominal</label>
      <div class="input-group mb-3">
        <div class="input-group-prepend">
          <span class="input-group-text" id="nominal">Rp.</span>
        </div>
        <span class="form-control-plaintext bg-transparent border-bottom" style="padding-left: 10px;"><?php echo ucwords($detail['nominal']) ?></span>
        <div class="input-group-append">
          <?php 
          $sum=0;
          $pay=mysqli_query($conn,"SELECT * from pettycash where id_project = '$_GET[id]' and is_delete = '0' order by payment_date desc");
          foreach ($pay as $p) {
            $sum+=$p['amount'];
          }
          ?>
          <span class="input-group-text bg-transparent" title="Rp. <?php echo number_format($sum) ?>">
            <?php echo round($sum/$detail['nominal']*100); ?>%
          </span>
          <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#detail-nominal">
            Detail
          </button>
        </div>
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
$sql="SELECT * from project_log where project_id = '".$_GET["id"]."' group by created_at order by created_at desc";
$logs=mysqli_query($conn,$sql);
?>
<section class="cd-container" id="cd-timeline">
  <?php $no=1;
  foreach ($logs as $log): 
    $assignee     = mysqli_fetch_array(mysqli_query($conn,"SELECT * FROM pegawai where id = '".$log['created_by']."'"));
    ?>
    <div class="cd-timeline-block">
      <div class="cd-timeline-img cd-picture bg-primary pt-3 text-center"><span><?php echo date_format(date_create($log['created_at']),'H:i') ?></span></div>
      <div class="cd-timeline-content">
        <h5><a class="text-dark" href="?module=pegawai&act=detail&id=<?php echo $detail['created_by']; ?>"><strong><?php echo ucwords($assignee['nama_pegawai']) ?></strong></a> melakukan kontribusi <?php echo timeElapsed($log['created_at'],true) ?></h5>
        <hr>
        <?php 
        $sub_logs=mysqli_query($conn,"SELECT * from project_log where project_id = '$_GET[id]' and created_at = '".$log['created_at']."'");
        foreach ($sub_logs as $sl): ?>
          <p class="text-dark"><?php echo $sl['text'] ?></p>
        <?php endforeach ?>
        <span class="cd-date"><?php echo dateIndonesian($log['created_at']) ?></span>
      </div>
    </div>
  <?php endforeach ?>

</section>
</div>
<!-- Modal -->
<div class="modal fade" id="detail-nominal" tabindex="-1" role="dialog" aria-labelledby="detail-nominalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="detail-nominalLabel">Payment Timeline</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <table class="table table-hover">            
          <?php 
          $payment=mysqli_query($conn,"SELECT * from pettycash where id_project = '$_GET[id]' and is_delete = '0' order by payment_date desc");
          $total=0;
          foreach ($payment as $p): $total+=$p['amount']; ?>
            <tr>
              <td><h6>Rp. <?php echo number_format($p['amount']) ?></h6></td>
              <td><?php echo $p['payment_type'] ?></td>
              <td><small><?php echo $p['subject'] ?></small></td>
              <td><span class="badge badge-primary badge-pill"><?php echo dateIndonesian($p['payment_date']) ?></span></td>
              <td><a href="<?php echo $aksi ?>?module=<?php echo $_GET['module'] ?>&act=payment_delete&id=<?php echo $p['id'] ?>&project_id=<?php echo $_GET['id'] ?>"><i class="fa fa-times text-danger"></i></a></td>
            </tr>
          <?php endforeach ?>
          <tr>
            <td><h6 class="<?php echo $total < $detail['nominal'] ?"text-danger":"text-success" ?>">Rp. <?php echo number_format($total-$detail['nominal']) ?></h6></td>
            <td><small class="text-left">Balance</small></td>
            <td><span class="badge <?php echo $total < $detail['nominal'] ? "badge-danger":"badge-success" ?> badge-pill"><?php echo $total < $detail['nominal'] ? "Belum Lunas":"Lunas" ?></span></td>
            <td></td>
          </tr>
        </table>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-link text-muted" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#addDetail">
          Add Payment
        </button>
      </div>
    </div>
  </div>
</div>
<!-- Modal -->
<div class="modal fade" id="addDetail" tabindex="-1" role="dialog" aria-labelledby="addDetailLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="addDetailLabel">Add Payment</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form method="POST" action="<?php echo $aksi ?>?module=<?php echo $_GET['module'] ?>&act=payment" enctype="multipart/form-data">
          <input type="hidden" name="project_id" value="<?php echo $_GET['id'] ?>">
          <div class="form-group">
            <label>Nominal</label>
            <div class="input-group mb-3">
              <div class="input-group-prepend">
                <span class="input-group-text" id="nominal">Rp.</span>
              </div>
              <input type="number" class="form-control" name="nominal" required aria-label="nominal" aria-describedby="nominal">
            </div>
          </div>
          <div class="form-group">
                      <label class="text-dark">Payment Type</label>
                      <select class="form-control custom-select" name="payment_type" required>
                        <option value="transfer">Transfer</option>
                        <option value="cash">Cash</option>
                      </select>
                    </div>
          <div class="form-group">
            <label>Payment Date</label>
            <input type="date" name="payment_date" class="form-control" required value="<?php echo date('Y-m-d') ?>">
          </div>
          <div class="form-group">
            <label>Subject</label>
            <input type="text" name="subject" class="form-control" required>
          </div>
          <div class="form-group">
            <label>Description</label>
            <textarea name="description" class="form-control"></textarea>
          </div>
          <div class="form-group">
            <button type="submit" class="btn btn-block btn-primary"><i class="fa fa-save"></i> Save</button>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>