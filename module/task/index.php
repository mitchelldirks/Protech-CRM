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
<?php 
$res = mysqli_query($conn, "SELECT * FROM todo ORDER BY id");
if ($_SESSION['level']=='admin') {
	$res=mysqli_query($conn,"SELECT * from todo where status = 0 ORDER BY updated_at desc");
}else{
	$res=mysqli_query($conn,"SELECT * from todo where status = 0 and assignee = '".$_SESSION['id_user']."' ORDER BY updated_at desc");
}
?>
<div class="col-xl-12 col-lg-12 col-md-12 col-xs-12 card layout-spacing mr-2">
	<div class="widget-content-area br-4 px-3 py-4">
		<h2>To Do</h2>
		<?php if (mysqli_num_rows($res) > 0): ?>
			<div class="table-responsive mb-4 mt-4">
				<table id="basic-1" class="table table-hover">
					<thead>
						<tr>
							<th>No</th>
							<th>Title</th>
							<th>Start Date</th>
							<th>Due Date</th>
						</tr>
					</thead>
					<tbody>
						<?php
						$no = 0;
						foreach($res as $row){
							$assignee 		= mysqli_fetch_array(mysqli_query($conn,"SELECT * FROM pegawai where id = '".$row['assignee']."'"));
							$no++;
							?>
							<tr>
								<td><?= $no; ?></td>
								<td>
									<a class="btn btn-primary btn-xs" href="?module=todo&act=detail&id=<?php echo $row['id']; ?>"><strong><?= $row['title']; ?></strong></a><br>
									<small class="text-wrap"><?= $row['description']; ?></small>
								</td>
								<td><?= $row['start_date']; ?></td>
								<td><?= $row['due_date']; ?></td>
							</tr>
						<?php } ?>
					</tbody>
				</table>
			</div>
		<?php else: ?>
			<p><i class="text-muted">No task todo</i></p>
		<?php endif ?>
	</div>
</div>
<?php 
if ($_SESSION['level']=='admin') {
	$query=mysqli_query($conn,"SELECT * from project where tracking < ".count($tracking)." and is_delete = 0 ORDER BY updated_at desc");
}else{
	$query=mysqli_query($conn,"SELECT * from project where assignee = '".$_SESSION['id_user']."' and tracking < ".count($tracking)." and is_delete = 0 ORDER BY updated_at desc");
}
?>
<div class="col-xl-12 col-lg-12 col-md-12 col-xs-12 card layout-spacing">
	<div class="widget-content-area br-4 px-3 py-4">
		<h2>Project</h2>
		<?php if (mysqli_num_rows($query) > 0): ?>
			<div class="table-responsive mb-4 mt-4">
				<table id="basic-1a" class="table table-hover table-striped" style="width:100%">
					<thead>
						<tr>
							<th>No</th>
							<th>#ID</th>
							<th>Tracker</th>
							<th>Priority</th>
							<th>Project</th>
							<th>Start Date</th>
							<th>Due Date</th>
						</tr>
					</thead>
					<tbody>
						<?php 
						$no = 1;
						foreach($query as $row){
							$assignee 		= mysqli_fetch_array(mysqli_query($conn,"SELECT * FROM pegawai where id = '".$row['assignee']."'"));
							$kategori=mysqli_fetch_array(mysqli_query($conn,"SELECT nama_kategori FROM kategori where id = '".$row['kategori']."'"));
							?>
							<tr>
								<td><?php echo $no++; ?></td>
								<td>
									<a class="crm-detail" href="?module=project&act=detail&id=<?php echo $row['id']; ?>">
										#CRM-<?php echo $row['id']; ?>
									</a>
								</td>
								<td><?php echo ucwords(@$tracking[$row['tracking']]); ?></td>
								<td><?php echo ucwords(@$priority[$row['priority']]); ?></td>
								<td>
									<a class="crm-detail" href="?module=project&act=detail&id=<?php echo $row['id']; ?>">
										<?php echo $row['nama_project']; ?>
									</a>
								</td>
								<td><?php echo $row['start_date']; ?></td>
								<td><?php echo $row['due_date']; ?></td>
							</tr>
						<?php } ?>
					</tbody>
				</table>
			</div>
		<?php else: ?>
			<p><i class="text-muted">No task todo</i></p>
		<?php endif ?>
	</div>
</div>