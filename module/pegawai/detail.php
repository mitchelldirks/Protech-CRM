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
      <div class="col-6 col-sm-6">
        <h6>Commit</h6>
        <h3 class="counter"><?php echo mysqli_num_rows(mysqli_query($conn,"SELECT * from project_log where created_by = '".$detail['id']."' group by created_at")) ?></h3>
      </div>
      <div class="col-6 col-sm-6">
        <h6>Active</h6>
        <h3 class="counter"><?php echo mysqli_num_rows(mysqli_query($conn,"SELECT * from project where assignee = '".$detail['id']."' ORDER BY updated_at desc")) ?></h3>
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
    <h4>Active Project</h4>
    <div class="table-responsive">
     <table id="basic-1" class="table table-hover table-striped" style="width:100%">
      <thead>
        <tr>
          <th>No</th>
          <th>#ID</th>
          <th>Project Case</th>
          <th>Tracker</th>
          <th>Priority</th>
          <th>Project</th>
          <th>Assignee</th>
          <th class="no-content">Last updated</th>
        </tr>
      </thead>
      <tbody>
        <?php 
        $query=mysqli_query($conn,"SELECT * from project where assignee = '".$_GET['id']."' ORDER BY updated_at desc");
        $no = 0;
        foreach($query as $row){
          $assignee     = mysqli_fetch_array(mysqli_query($conn,"SELECT * FROM pegawai where id = '".$row['assignee']."'"));
          $kategori=mysqli_fetch_array(mysqli_query($conn,"SELECT nama_kategori FROM kategori where id = '".$row['kategori']."'"));
          $no++;
          ?>
          <tr>
            <td><?php echo $no; ?></td>
            <td>
              <a class="crm-detail" href="?module=project&act=detail&id=<?php echo $row['id']; ?>">
                #CRM-<?php echo $row['id']; ?>
              </a>
            </td>
            <td><?php echo ucwords(@$project_case[$row['project_case']]); ?></td>
            <td><?php echo ucwords(@$tracking[$row['tracking']]); ?></td>
            <td><?php echo ucwords(@$priority[$row['priority']]); ?></td>
            <td>
              <a class="crm-detail" href="?module=project&act=detail&id=<?php echo $row['id']; ?>">
                <?php echo $row['nama_project']; ?>
              </a>
            </td>
            <td>
              <a class="crm-detail" href="?module=pegawai&act=detail&id=<?php echo $assignee['id']; ?>">
                <?php echo $assignee['nama_pegawai']; ?>
              </a>
            </td>
            <td><?php echo $row['updated_at']; ?></td>
          </tr>
        <?php } ?>
      </tbody>
    </table>
  </div>
</div>
</div>