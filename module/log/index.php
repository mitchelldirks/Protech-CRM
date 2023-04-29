<?php $aksi="module/".$_GET['module']."/action.php"; ?>
<div class="col-xl-12 col-lg-12 col-md-12 col-12 card layout-spacing">
	<div class="widget-content-area br-4">

		<div class="table-responsive mb-4 mt-4">
			<table id="basic-1" class="table table-hover" style="width:100%">
				<thead>
					<tr>
						<th>No</th>
						<th>Project</th>
						<th>Last IP</th>
						<th>Last Timestamp</th>
						<th class="no-content"></th>
					</tr>
				</thead>
				<tbody>
					<?php
					$no = 0;
					$query = mysqli_query($conn, "SELECT * FROM project join log_external on project.signature=log_external.signature group by log_external.signature ORDER BY log_external.timestamp desc");
					foreach($query as $row){
						$no++;
						?>
						<tr>
							<td><?php echo $no; ?></td>
							<td><a href="?module=<?php echo $_GET['module'] ?>&act=project&signature=<?php echo $row['signature']; ?>"><?php echo $row['nama_project']; ?></a></td>
							<td><a href="?module=<?php echo $_GET['module'] ?>&act=ip&ip=<?php echo $row['ip']; ?>"><?php echo $row['ip']; ?></a></td>
							<td><?php echo $row['timestamp']; ?></td>
							<td>
								<span class="float-right">
									<a class="btn btn-primary btn-xs" href="?module=<?php echo $_GET['module'] ?>&act=detail&id=<?php echo $row['id']; ?>"><i data-feather="search"></i></a>
								</span>
							</td>
						</tr>
					<?php } ?>
				</tbody>
			</table>
		</div>
	</div>
</div>
