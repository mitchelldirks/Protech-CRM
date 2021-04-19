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
					$no = 0;
					$query = mysqli_query($conn, "SELECT * FROM project ORDER BY updated_at desc");
					foreach($query as $row){
						$project_case 	= array(1=>'Build','Bug','Feature','Doc & Adm');
						$tracking 		= array(1=>'back log','analisa desain sistem','pembangunan','testing','deploy','finish');
						$priority 		= array(1=>'low','normal','high','urgent');
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
							<!-- <td>
								<span class="float-right">
									<a class="btn btn-primary btn-xs" href="?module=<?php echo $_GET['module'] ?>&act=edit&id=<?php echo $row['id']; ?>"><i data-feather="edit"></i></a>
									<a class="btn btn-danger btn-xs" onclick="return confirm('Hapus data?')" href="<?php echo $aksi ?>?module=<?php echo $_GET['module'] ?>&act=delete&id=<?php echo $row['id']; ?>"><i data-feather="delete"></i></a>
								</span>
							</td> -->
						</tr>
					<?php } ?>
				</tbody>
			</table>
		</div>
	</div>
</div>