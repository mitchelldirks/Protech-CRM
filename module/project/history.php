<?php $aksi="module/".$_GET['module']."/action.php"; ?>
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
<div class="col-xl-12 col-lg-12 col-md-12 col-12 card layout-spacing">
	<?php 
	if (isset($_SESSION['flash'])): ?>
		<div class="<?php echo $_SESSION['flash']['class']; ?> mt-3 mb-3"> 
			<i class="<?php echo $_SESSION['flash']['icon'] ?>"></i> <?php echo $_SESSION['flash']['label']; ?>
			<button type="button" class="close" data-dismiss="alert" aria-label="Close"> <span aria-hidden="true">×</span> </button>
		</div>
	<?php endif ?>
	<div class="widget-content-area br-4">
		<span class="float-left">
			<a class="btn btn-primary ml-2 mb-4 mt-2" href="?module=<?php echo $_GET['module'] ?>&act=create">Tambah <?php echo $_GET['module'] ?></a>
		</span>
		<span class="float-right">
			<?php $count_done=mysqli_num_rows(mysqli_query($conn,"SELECT * from project where tracking < ".count($tracking))); ?>
			<?php if ($count_done > 0): ?>
				<a class="btn btn-link mr-2 mb-4 mt-2 text-muted" href="?module=<?php echo $_GET['module'] ?>">
					<?php echo ucwords($_GET['module']) ?> tersedia (<?php echo $count_done; ?>)
				</a>
			<?php endif ?>
		</span>
		<div class="table-responsive mb-4 mt-4">
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
					if ($_SESSION['level']=='admin') {
						$query=mysqli_query($conn,"SELECT * from project where tracking = ".count($tracking)." ORDER BY updated_at desc");
					}else{
						$query=mysqli_query($conn,"SELECT * from project where assignee = '".$_SESSION['id_user']."' and  start_date <= '".date('Y-m-d')."' and due_date >= '".date('Y-m-d')."' and tracking = ".count($tracking)." ORDER BY updated_at desc");
					}
					$no = 0;
					foreach($query as $row){
						$assignee 		= mysqli_fetch_array(mysqli_query($conn,"SELECT * FROM pegawai where id = '".$row['assignee']."'"));
						$kategori=mysqli_fetch_array(mysqli_query($conn,"SELECT nama_kategori FROM kategori where id = '".$row['kategori']."'"));
						$no++;
						?>
						<tr>
							<td><?php echo $no; ?></td>
							<td>
								<a class="crm-detail" href="?module=<?php echo $_GET['module'] ?>&act=detail&id=<?php echo $row['id']; ?>">
									#CRM-<?php echo $row['id']; ?>
								</a>
							</td>
							<td><?php echo ucwords(@$project_case[$row['project_case']]); ?></td>
							<td><?php echo ucwords(@$tracking[$row['tracking']]); ?></td>
							<td><?php echo ucwords(@$priority[$row['priority']]); ?></td>
							<td>
								<a class="crm-detail" href="?module=<?php echo $_GET['module'] ?>&act=detail&id=<?php echo $row['id']; ?>">
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