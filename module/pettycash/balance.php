<?php $aksi="module/".$_GET['module']."/action.php"; ?>
<div class="col-xl-12 col-lg-12 col-md-12 col-12 card layout-spacing">
	<?php 
	if (isset($_SESSION['flash'])): ?>
		<div class="<?php echo $_SESSION['flash']['class']; ?> mt-3 mb-3"> 
			<i class="<?php echo $_SESSION['flash']['icon'] ?>"></i> <?php echo $_SESSION['flash']['label']; ?>
			<button type="button" class="close" data-dismiss="alert" aria-label="Close"> <span aria-hidden="true">×</span> </button>
		</div>
	<?php endif ?>
	<!-- <div class="widget-content-area br-4">
		<span class="float-right">
			<a class="btn btn-primary ml-2 mb-4 mt-2" href="#" type="button" class="btn btn-success btn-md" data-toggle="modal" data-target="#modal">Tambah Income</a>
		</span><br> -->
		<form method="GET">
                  <label for="date1">Date From</label>
                  <input type="date" name="date1" value="<?php echo date('Y-m-d') ?>">
                  <label for="date2">&nbsp;Date To</label>
                  <input type="date" name="date2" value="<?php echo date('Y-m-d') ?>">
                  <input type="submit" name="submit" class="btn btn-primary" value="filter">
         </form>
		<div class="table-responsive mb-4 mt-4">
			<table id="basic-1" class="table table-hover" style="width:100%">
				<thead>
					<tr>
						<th>No</th>
						<th>Flow</th>
						<th>Payment Type</th>
						<th>Payment Date</th>
						<th>Project</th>
						<th>Subject</th>
						<th>Amount</th>
						<th>Status</th>
						<th>Desc</th>
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
							<td><?php echo $row['payment_type']; ?></td>
							<td><?php echo dateIndonesian($row['payment_date']); ?></td>
							<td><?php echo $row['id_project']; ?></td>
							<td><?php echo $row['subject']; ?></td>
							<td><?php echo number_format($row['amount'],0,',','.'); ?></td>
							<td><?php echo $row['status']; ?></td>
							<td><?php echo $row['description']; ?></td>
							<td>
								<span class="float-right">
									<a class="btn btn-primary btn-xs" href="?module=<?php echo $_GET['module'] ?>&act=edit&id=<?php echo $row['id']; ?>"><i data-feather="edit"></i></a>
									<a class="btn btn-danger btn-xs" onclick="return confirm('Hapus data?')" href="<?php echo $aksi ?>?module=<?php echo $_GET['module'] ?>&act=delete&flow=<?php echo $_GET['act']?>&id=<?php echo $row['id']; ?>"><i data-feather="delete"></i></a>
								</span>
							</td>
						</tr>
					<?php } ?>
				</tbody>
			</table>

			

</div>
</div>
</div>
</div>
</div>
</div>
</div>
