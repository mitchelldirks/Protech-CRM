<?php 
$aksi="module/".$_GET['module']."/action.php";
$where=array();
$where[] = " is_delete = 0 ";
if 		($_SESSION['level']!=='admin') { 	$where[] = " assignee = '".$_SESSION['id_user']."' "; }
if (isset($_GET['view'])) {

	if ($_GET['view'] !== 'all') {
		$where[] = " tracking = ".$_GET['view']." ";
	}
}else{
	$where[] = " tracking = 3 ";
}
$sql="SELECT * from project where ".implode(" and ", $where)." ORDER BY updated_at desc";
$query=mysqli_query($conn,$sql);
?>
<style type="text/css">
.crm-detail{
	transition: 0.5s;
}
.crm-detail:hover{
	text-decoration: underline;
	color: chocolate;
	margin-top: -5px;
	transition: 0.5s;
}
</style>
<div class="col-md-12">
	<?php 
	if (isset($_SESSION['flash'])): ?>
		<div class="<?php echo $_SESSION['flash']['class']; ?> mt-3 mb-3"> 
			<i class="<?php echo $_SESSION['flash']['icon'] ?>"></i> <?php echo $_SESSION['flash']['label']; ?>
			<button type="button" class="close" data-dismiss="alert" aria-label="Close"> <span aria-hidden="true">×</span> </button>
		</div>
	<?php endif ?>
</div>
<div class="row project-cards mb-5">
	<div class="col-md-12 project-list">
		<div class="card">
			<div class="row">
				<div class="col-md-12">
					<ul class="nav nav-tabs border-tab" id="top-tab" role="tablist">
						<li class="nav-item">
							<a class="btn btn-primary" href="?module=<?php echo $_GET['module'] ?>&act=create" title="Tambah <?php echo $_GET['module'] ?>"><i data-feather="plus-square"></i></a>
						</li>
						<li class="nav-item"><a class="nav-link <?php echo  $_GET['view'] == 'all' ? 'active':'' ?>" href="?module=<?php echo $_GET['module'] ?>&view=all" style="font-size: 12px;"><i data-feather="target"></i>All</a></li>
						<?php 
						$tr = isset($_GET['view']) ? $_GET['view'] : 3;
						foreach ($tracking as $key => $value): 
							?>
							<li class="nav-item"><a class="nav-link <?php echo  $tr == $key ? 'active':'' ?>" href="?module=<?php echo $_GET['module'] ?>&view=<?php echo $key ?>" style="font-size: 12px;"><i data-feather="check-circle"></i><?php echo ucwords($value) ?></a></li>
						<?php endforeach ?>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div class="col-sm-12">
		<div class="row">
			<?php 
			foreach($query as $row):
				$nama_project = strlen($row['nama_project'])>38 ? substr($row['nama_project'], 0,38).".." : $row['nama_project'];
				$percentage = round($row['tracking'] / count($tracking) *100);
				$assignee 		= mysqli_fetch_array(mysqli_query($conn,"SELECT * FROM pegawai where id = '".$row['assignee']."'"));
				$kategori=mysqli_fetch_array(mysqli_query($conn,"SELECT nama_kategori FROM kategori where id = '".$row['kategori']."'"));
				if ($row['tracking'] == count($tracking)) {
					$bg='light';
				}elseif ($row['tracking'] == 1 or $row['tracking'] == 2) {
					$bg='primary';	
				}elseif ($row['tracking'] > 2 and $row['tracking'] < count($tracking)) {
					$bg='success';	
				}
				?>
				<div class="col-xxl-4 col-lg-6 col-xs-12 mt-2">
					<div class="project-box shadow">
						<span class="float-right badge badge-<?= $bg ?>"><?php echo ucwords(@$tracking[$row['tracking']]); ?></span>
						<h5>
							<a class="crm-detail" href="?module=<?php echo $_GET['module'] ?>&act=detail&id=<?php echo $row['id']; ?>"><?php echo $nama_project; ?></a>
						</h5>
						<p class="text-muted">
							<a class="crm-detail text-muted" href="?module=<?php echo $_GET['module'] ?>&act=detail&id=<?php echo $row['id']; ?>">
								#CRM-<?php echo $row['id']; ?>
							</a>
						</p>
						<p>
							<img class="img-20 me-1 rounded-circle" src="../assets/images/dashboard/profile.jpg" alt="" data-original-title="" title="">
							<a class="ml-2 text-dark" href="?module=pegawai&act=detail&id=<?php echo $assignee['id']; ?>">
								<b><?php echo $assignee['nama_pegawai']; ?></b>
							</a>
						</p>
						<div class="row details">
							<div class="col-6"><span>Project Case </span></div>
							<div class="col-6"><b><?php echo ucwords(@$project_case[$row['project_case']]); ?></b></div>
							<div class="col-6"> <span>Priority</span></div>
							<div class="col-6"><b><?php echo ucwords(@$priority[$row['priority']]); ?></b></div>
							<div class="col-6"> <span>Start Date</span></div>
							<div class="col-6"><b><?php echo dateIndonesian($row['start_date']); ?></b></div>
							<div class="col-6"> <span>Due Date</span></div>
							<div class="col-6"><b><?php echo dateIndonesian($row['due_date']); ?></b></div>
						</div>
						<div class="project-status mt-4">
							<div class="media mb-0">
								<p><?php echo $percentage ?>%</p>
								<div class="media-body text-end ml-2"><span>Done</span></div>
							</div>
							<div class="progress" style="height: 10px">
								<div class="progress-bar-animated bg-<?=$bg?> progress-bar-striped" role="progressbar" style="width: <?php echo $percentage ?>%" aria-valuenow="10" aria-valuemin="0" aria-valuemax="100"></div>
							</div>
						</div>
					</div>
				</div>
			<?php endforeach ?>
		</div>
	</div>
</div>