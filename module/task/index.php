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
<div class="col-xl-6 col-lg-6 col-md-6 col-6 card layout-spacing">
	<div class="widget-content-area br-4">
		<div class="table-responsive mb-4 mt-4">
			<table id="basic-1" class="table table-hover table-striped" style="width:100%">
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
					$res = mysqli_query($conn, "SELECT * FROM todo ORDER BY id");
					foreach($res as $row){
						$no++;
						?>
						<tr>
							<td><?= $no; ?></td>
							<td><?= $row['title']; ?></td>
							<td><?= $row['start_date']; ?></td>
							<td><?= $row['due_date']; ?></td>
							</tr>
					<?php } ?>
				</tbody>
			</table>
		</div>
	</div>
</div>
<div class="col-xl-6 col-lg-6 col-md-6 col-6 card layout-spacing">
	<div class="widget-content-area br-4">
		<div class="table-responsive mb-4 mt-4">
			<table id="basic-1" class="table table-hover table-striped" style="width:100%">
				<thead>
					<tr>
						<th>No</th>
						<th>#ID</th>
						<th>Tracker</th>
						<th>Priority</th>
						<th>Project Title</th>
						<th>Start Date</th>
						<th>Due Date</th>
						
					</tr>
				</thead>
				<tbody>
					<?php 
					if ($_SESSION['level']=='admin') {
						$query=mysqli_query($conn,"SELECT * from project where tracking < ".count($tracking)." and is_delete = 0 ORDER BY updated_at desc");
					}else{
						// $query=mysqli_query($conn,"SELECT * from project where assignee = '".$_SESSION['id_user']."' and  start_date <= '".date('Y-m-d')."' and due_date >= '".date('Y-m-d')."' and tracking < ".count($tracking)." ORDER BY updated_at desc");
						$query=mysqli_query($conn,"SELECT * from project where assignee = '".$_SESSION['id_user']."' and tracking < ".count($tracking)." and is_delete = 0 ORDER BY updated_at desc");
					}
					$no = 1;
					foreach($query as $row){
						$assignee 		= mysqli_fetch_array(mysqli_query($conn,"SELECT * FROM pegawai where id = '".$row['assignee']."'"));
						$kategori=mysqli_fetch_array(mysqli_query($conn,"SELECT nama_kategori FROM kategori where id = '".$row['kategori']."'"));
						?>
						<tr>
							<td><?php echo $no++; ?></td>
							<td>
								<a class="crm-detail" href="?module=<?php echo $_GET['module'] ?>&act=detail&id=<?php echo $row['id']; ?>">
									#CRM-<?php echo $row['id']; ?>
								</a>
							</td>
		
							<td><?php echo ucwords(@$tracking[$row['tracking']]); ?></td>
							<td><?php echo ucwords(@$priority[$row['priority']]); ?></td>
							<td>
								<a class="crm-detail" href="?module=<?php echo $_GET['module'] ?>&act=detail&id=<?php echo $row['id']; ?>">
									<?php echo $row['nama_project']; ?>
								</a>
							</td>
							<td><?php echo $row['start_date']; ?></td>
						<td><?php echo $row['due_date'];?></td>
						</tr>
					<?php } ?>
				</tbody>
			</table>
