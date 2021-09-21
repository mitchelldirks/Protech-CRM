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
                  echo mysqli_num_rows(mysqli_query($conn,"SELECT * from project"));
                  ?>
                </h4>
                <span>Project</span>
              </div>
            </div>
          </div>
        </div>
        <div class="col-xl-3 col-md-6 col-sm-6 p-0 box-col-6">
          <div class="media align-items-center">
            <div class="media-body">
              <div class="right-chart-content">
                <h4><?php echo mysqli_num_rows(mysqli_query($conn,"SELECT * from project where tracking < ".count($tracking))); ?></h4><span>Open </span>
              </div>
            </div>
          </div>
        </div>
        <div class="col-xl-3 col-md-6 col-sm-6 p-0 box-col-6">
          <div class="media align-items-center">
            <div class="media-body">
              <div class="right-chart-content">
                <h4><?php echo mysqli_num_rows(mysqli_query($conn,"SELECT * from project where tracking = ".count($tracking))); ?></h4><span>Closed </span>
              </div>
            </div>
          </div>
        </div>
        <div class="col-xl-3 col-md-6 col-sm-6 p-0 box-col-6">
          <div class="media align-items-center">
            <div class="media-body">
              <div class="right-chart-content">
                <h4><?php 
                echo mysqli_num_rows(mysqli_query($conn,"SELECT * from project where tracking < ".count($tracking)." and tracking > 1")); ?></h4><span>Progress </span>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- <div class="col-xl-4 col-lg-4 col-xs-12  box-col-4">
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
</div> -->
<div class="col-xl-12 col-lg-12 col-xs-12  box-col-8">
  <div class="card p-4">
    <h3 class="">Project Tersedia</h3>
    <table class="table table-hover table-striped" id="basic-1">
      <thead>
        <th>No</th>
        <th>#ID</th>
        <th>Project Case</th>
        <th>Tracker</th>
        <th>Priority</th>
        <th>Project</th>
        <th>Assignee</th>
        <th class="no-content">Last updated</th>
      </thead>
      <tbody>
        <?php 
        if ($_SESSION['level']=='admin') {
          $query=mysqli_query($conn,"SELECT * from project where tracking < ".count($tracking)." ORDER BY updated_at desc");
        }else{
          $query=mysqli_query($conn,"SELECT * from project where assignee = '".$_SESSION['id_user']."' and tracking < ".count($tracking)." ORDER BY updated_at desc");
        }
        $no=1; 
        foreach ($query as $row): 
          $assignee    = mysqli_fetch_array(mysqli_query($conn,"SELECT * FROM pegawai where id = '".$row['assignee']."'"));
          $kategori=mysqli_fetch_array(mysqli_query($conn,"SELECT nama_kategori FROM kategori where id = '".$row['kategori']."'"));
          ?>
          <tr>
            <td><?php echo $no++; ?></td>
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
        <?php endforeach ?>
      </tbody>
    </table>
  </div>
</div>
