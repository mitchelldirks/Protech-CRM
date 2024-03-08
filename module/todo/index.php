<?php $aksi="module/".$_GET['module']."/action.php"; ?>
<div class="col-xl-12 col-lg-12 col-md-12 col-12 card layout-spacing">
	<?php 
	if (isset($_SESSION['alert'])): ?>
		<div class="<?php echo $_SESSION['alert']['class']; ?> mt-3 mb-3"> 
			<i class="<?php echo $_SESSION['alert']['icon'] ?>"></i> <?php echo $_SESSION['alert']['text']; ?>
			<button type="button" class="close" data-dismiss="alert" aria-label="Close"> <span aria-hidden="true">×</span> </button>
		</div>
	<?php endif; unset($_SESSION['alert']); ?>
	<div class="widget-content-area br-4 px-3 py-4">
		<span class="float-left">
			<a class="btn btn-primary ml-2 mb-4 mt-2" href="?module=<?php echo $_GET['module'] ?>&act=create">Tambah <?php echo $_GET['module'] ?></a>
		</span>
		<div class="table-responsive mb-4 mt-4">
			<table id="basic-1" class="table table-hover" style="width:100%">
				<thead>
					<tr>
						<th>No</th>
						<th>Title</th>
						<th>Assignee</th>
						<th>Start Date</th>
						<th>Due Date</th>
						<th>Status</th>
						<th class="no-content"></th>
					</tr>
				</thead>
				<tbody>
					<?php
					$no = 0;
					if ($_SESSION['level']=='admin') {
						
					$res = mysqli_query($conn, "SELECT * FROM todo ORDER BY id");
					}else{
					$res = mysqli_query($conn, "SELECT * FROM todo where assignee='".$_SESSION['id_user']."' ORDER BY id");

					}
					foreach($res as $row){
						$assignee 		= mysqli_fetch_array(mysqli_query($conn,"SELECT * FROM pegawai where id = '".$row['assignee']."'"));

						$no++;
						?>
						<tr>
							<td><?= $no; ?></td>
							<td>
								<a class="btn btn-primary btn-xs" href="?module=<?php echo $_GET['module'] ?>&act=detail&id=<?php echo $row['id']; ?>"><strong><?= $row['title']; ?></strong></a><br>
								<small class="text-wrap"><?= $row['description']; ?></small>
							</td>
							<td>
								<a class="crm-detail" href="?module=pegawai&act=detail&id=<?php echo $assignee['id']; ?>">
									<?php echo $assignee['nama_pegawai']; ?>
								</a>
							</td>
							<td><?= $row['start_date']; ?></td>
							<td><?= $row['due_date']; ?></td>
							<td><?= $row['status'] == 1 ? "Finshed" : "On Going"; ?></td>
							<td>
								<span class="float-right">
									<!-- <a class="btn btn-primary btn-xs" href="?module=<?php echo $_GET['module'] ?>&act=detail&id=<?php echo $row['id']; ?>"><i data-feather="eye"></i></a> -->
									<a class="btn btn-primary btn-xs" href="?module=<?php echo $_GET['module'] ?>&act=edit&id=<?php echo $row['id']; ?>"><i data-feather="edit"></i></a>
									<a class="btn btn-danger btn-xs" onclick="return confirm('Hapus data?')" href="<?php echo $aksi ?>?module=<?php echo $_GET['module'] ?>&act=delete&id=<?php echo $row['id']; ?>"><i data-feather="trash"></i></a>
								</span>
							</td>
						</tr>
					<?php } ?>
				</tbody>
			</table>
		</div>
	</div>
</div>