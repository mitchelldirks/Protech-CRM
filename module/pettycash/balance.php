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
		<form  method="GET" enctype="multipart/form-data">
			<input type="hidden" name="module" value="<?php echo $_GET['module']?>">
			<input type="hidden" name="act" value="<?php echo $_GET['act']?>">
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
					</tr>
				</thead>
				<tbody>
					<?php
					$no = 0;
					if (isset($_GET['date1'])) {
					$query = mysqli_query($conn, "SELECT * FROM pettycash WHERE payment_date between '".$_GET['date1']."' and '".$_GET['date2']."' ORDER BY payment_date desc");

					}else{
					$query = mysqli_query($conn, "SELECT * FROM pettycash ORDER BY payment_date desc");
					}
					foreach($query as $row){
						$project 		= mysqli_fetch_array(mysqli_query($conn,"SELECT * FROM project where id = '".$row['id_project']."'"));
						$no++;
						?>
						<tr>
							<td><?php echo $no; ?></td>
							<td><?php echo $row['flow']; ?></td>
							<td><?php echo $row['payment_type']; ?></td>
							<td><?php echo dateIndonesian($row['payment_date']); ?></td>
							<td><?php echo $project['nama_project']; ?></td>
							<td><?php echo $row['subject']; ?></td>
							<td>Rp. <?php echo number_format($row['amount'],0,',','.'); ?></td>
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
