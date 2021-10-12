<?php $aksi="module/".$_GET['module']."/action.php"; ?>
<style type="text/css">
	.checkbox-filter {
    	padding: 4px;
    	border-radius:4px;
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
	<div class="pt-3">
		<form  method="GET" enctype="multipart/form-data">
			<input type="hidden" name="module" value="<?php echo $_GET['module']?>">
				<input type="hidden" name="act" value="<?php echo $_GET['act']?>">
				<label for="date1">Date From</label>
				<input type="date" class="checkbox-filter" name="date1" value="<?php echo isset($_GET['date1']) ? $_GET['date1'] : date('Y-m-01') ?>">
				<label for="date2">&nbsp;Date To</label>
				<input type="date" class="checkbox-filter" name="date2" value="<?php echo isset($_GET['date2']) ? $_GET['date2'] : date('Y-m-d') ?>">
				<input type="submit" class="btn btn-primary">
		</form>
	</div>
	<div class="table-responsive mb-4 mt-4">
		<table id="basic-1" class="table table-hover" style="width:100%">
			<thead>
				<tr>
					<th rowspan="2">No</th>
					<th rowspan="2">Flow</th>
					<th rowspan="2">Payment Type</th>
					<th rowspan="2">Payment Date</th>
					<th rowspan="2">Project</th>
					<th rowspan="2">Subject</th>
					<th colspan="2" class="text-center">Amount</th>
				</tr>
				<tr>
					<th>Income</th>
					<th>Expense</th>
				</tr>
			</thead>
			<tbody>
				<?php
				$no = 0;
				if (isset($_GET['date1'])) {
					$query = mysqli_query($conn, "SELECT * FROM pettycash WHERE payment_date between '".$_GET['date1']."' and '".$_GET['date2']."' and is_delete = '0' ORDER BY payment_date desc");
				}else{
					$query = mysqli_query($conn, "SELECT * FROM pettycash WHERE payment_date between '".date('Y-m-01')."' and '".date('Y-m-d')."' and is_delete = '0' ORDER BY payment_date desc");
				}
				foreach($query as $row){
					$project 		= mysqli_fetch_array(mysqli_query($conn,"SELECT * FROM project where id = '".$row['id_project']."'"));
					$no++;
					?>
					<tr>
						<td><?php echo $no; ?></td>
						<td><?php echo ucwords($row['flow']); ?></td>
						<td><?php echo ucwords($row['payment_type']); ?></td>
						<td><?php echo dateIndonesian($row['payment_date']); ?></td>
						<td><?php echo $project['nama_project']; ?></td>
						<td><?php echo $row['subject']; ?></td>
						<?php if ($row['flow']=='income'){ 
							$income += $row['amount']; ?>
							<td>Rp. <?php echo number_format($row['amount'],0,',','.'); ?></td>
							<td></td>	
						<?php }else{ 
							$expense += $row['amount'];?>
							<td></td>	
							<td>Rp. <?php echo number_format($row['amount'],0,',','.'); ?></td>
						<?php } ?>
					</tr>
				<?php } ?>
			</tbody>
			<tfoot>
				<tr>
					<td rowspan="2" colspan="5"></td>
					<th>Total</th>
					<th>Rp. <?php echo number_format($income) ?></th>
					<th>Rp. <?php echo number_format($expense) ?></th>
				</tr>
				<tr>
					<th>Grand Total</th>
					<th colspan="2" class="text-<?php echo ($income-$expense) >= 0 ? "success":"danger" ?>">Rp. <?php echo number_format($income-$expense) ?></th>
				</tr>
			</tfoot>
		</table>
	</div>
</div>