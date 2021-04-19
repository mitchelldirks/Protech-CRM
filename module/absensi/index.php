<?php 
$aksi 	= "module/".$_GET['module']."/action.php"; 
$target = mysqli_fetch_array(mysqli_query($conn, "SELECT * FROM target WHERE bulan = '".date('Y-m')."'"));
?>
<div class="col-xl-12 col-lg-12 col-md-12 col-12 layout-spacing">
	<?php 
	if (isset($_SESSION['flash'])): ?>
		<div class="<?php echo $_SESSION['flash']['class']; ?> mt-3 mb-3"> 
			<i class="<?php echo $_SESSION['flash']['icon'] ?>"></i> <?php echo $_SESSION['flash']['label']; ?>
			<button type="button" class="close" data-dismiss="alert" aria-label="Close"> <span aria-hidden="true">×</span> </button>
		</div>
	<?php endif ?>
	<div class="widget-content-area br-4">
		<span class="float-left">
			<a class="btn btn-primary ml-2 mb-4" href="?module=<?php echo $_GET['module'] ?>&act=create">Tambah <?php echo $_GET['module'] ?></a>
		</span>
		<div class="table-responsive mb-4 mt-4">
			<table id="example1" class="table table-hover" style="width:100%">
				<thead>
					<tr>
						<th>No</th>
						<th>User</th>
						<th>Tanggal</th>
						<th>Masuk</th>
						<th>Keluar</th>
						<th>Status</th>
						<th class="no-content"></th>
					</tr>
				</thead>
				<tbody>
					<?php
					$no = 0;
					$query = mysqli_query($conn, "SELECT * FROM absensi ORDER BY id DESC");
					foreach($query as $row){
						$no++;

						$user 	= mysqli_query($conn, "SELECT * FROM user WHERE id = '".$row['id_user']."'");
						$rowu 	= mysqli_fetch_array($user);
						?>
						<tr>
							<td><?php echo $no; ?></td>
							<td><a href="media.php?module=<?php echo $_GET['module']; ?>&act=detail&id=<?php echo $row['id']; ?>"><?php echo $rowu['nama']; ?></a></td>
							<td><?php echo date('d/m/Y', strtotime($row['tanggal'])); ?></td>
							<td><?php echo $row['masuk']; ?></td>
							<td><?php if(!empty($row['keluar'])){ echo $row['keluar']; } ?></td>
							<td><?php echo $row['status']; ?></td>
							<td>
								<span class="float-right">
									<?php if($row['status'] == 'Pending'){ ?>
										<a class="btn btn-primary" href="?module=<?php echo $_GET['module'] ?>&act=edit&id=<?php echo $row['id']; ?>"><i class="fa fa-edit"></i></a>
										<a class="btn btn-danger" onclick="return confirm('Hapus data?')" href="<?php echo $aksi ?>?module=<?php echo $_GET['module'] ?>&act=delete&id=<?php echo $row['id']; ?>"><i class="fa fa-trash"></i></a>
										<a class="btn btn-success" href="<?php echo $aksi ?>?module=<?php echo $_GET['module'] ?>&act=finish&id=<?php echo $row['id']; ?>" onclick="return confirm('Anda yakin ingin mengkonfirmasi penyelesaian transaksi?');"><i class="fa fa-check"></i></a>
									<?php } ?>

									<?php if(empty($row['keluar'])){ ?>
										<a href="<?php echo $aksi; ?>?module=<?php echo $_GET['module']; ?>&act=checkout&id=<?php echo $row['id']; ?>" class="btn btn-warning" title="Checkout" onclick="return confirm('Yakin ingin checkout?');">Checkout</a>
									<?php } ?>
								</span>
							</td>
						</tr>
					<?php } ?>
				</tbody>
			</table>
		</div>
	</div>
</div>
