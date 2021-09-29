<?php $aksi="module/".$_GET['module']."/action.php"; ?>
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
		<br><br>
		<form method="GET">
                  <label for="date1">Date From</label>
                  <input type="date" name="date1" value="<?php echo date('ymd') ?>">
                  <label for="date2">&nbsp;Date To</label>
                  <input type="date" name="date2" value="<?php echo date('ymd') ?>">
                  <input type="submit" name="submit" class="btn btn-primary" value="filter">
                </form>
		

		<div class="table-responsive mb-4 mt-4">
			<table id="example-1" class="table table-bordered table-striped" cellspacing="0" style="width: 100%">
			<!-- <table id="basic-1" class="table table-hover" style="width:100%"> -->
				<thead>
					<tr>
						<th>No</th>
						<th>Flow</th>
						<th>Kategori</th>
						<th>Nama</th>
						<th>Subject</th>
						<th>Amount</th>
						<th class="no-content">Last Modified</th>
					</tr>
				</thead>
				<tbody>
					<?php
					$no = 0;
					$query = mysqli_query($conn, "SELECT * FROM pettycash ORDER BY id");
					foreach($query as $row){
						$no++;
						?>
						<tr>
							<td><?php echo $no; ?></td>
							<td><?php echo $row['flow']; ?></td>
							<td><?php echo $row['nama_kategori']; ?></td>
							<td><?php echo $row['nama_pegawai']; ?></td>
							<td><?php echo $row['subject']; ?></td>
							<td><?php echo $row['amount']; ?></td>
							<td>
								<span class="float-right">
									<a class="btn btn-primary btn-xs" href="?module=<?php echo $_GET['module'] ?>&act=edit&id=<?php echo $row['id']; ?>"><i data-feather="edit"></i></a>
									<a class="btn btn-danger btn-xs" onclick="return confirm('Hapus data?')" href="<?php echo $aksi ?>?module=<?php echo $_GET['module'] ?>&act=delete&id=<?php echo $row['id']; ?>"><i data-feather="delete"></i></a>
								</span>
							</td>
						</tr>
					<?php } ?>
				</tbody>
			</table>
		</div>
	</div>
</div>
