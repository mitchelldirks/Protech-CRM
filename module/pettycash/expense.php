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
	<div class="widget-content-area br-4">
		<span class="float-right">
			<a class="btn btn-primary ml-2 mb-4 mt-2" href="#" type="button" class="btn btn-success btn-md" data-toggle="modal" data-target="#modal">Tambah Expense</a>
		</span>
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
						<th>No</th>
						<th>Payment Type</th>
						<th>Payment Date</th>
						<th>Project</th>
						<th>Subject</th>
						<th>Amount</th>
						<th class="no-content">Last Modified</th>
						<th></th>
					</tr>
				</thead>
				<tbody>
					<?php
					if (isset($_GET['date1'])) {
						$query = mysqli_query($conn, "SELECT * FROM pettycash WHERE flow='expense' AND payment_date between '".$_GET['date1']."' and '".$_GET['date2']."' and is_delete = '0' ORDER BY payment_date desc");
					}else{
						$query = mysqli_query($conn, "SELECT * FROM pettycash WHERE flow='expense' AND payment_date between '".date('Y-m-01')."' and '".date('Y-m-d')."' and is_delete = '0' ORDER BY payment_date desc");
					}
					$no = 0;
					foreach($query as $row){
						$project 		= mysqli_fetch_array(mysqli_query($conn,"SELECT * FROM project where id = '".$row['id_project']."'"));
						$no++;
						?>
						<tr>
							<td><?php echo $no; ?></td>
							<td><?php echo ucwords($row['payment_type']); ?></td>
							<td><?php echo dateIndonesian($row['payment_date']); ?></td>
							<td><?php echo $project['nama_project']; ?></td>
							<td><?php echo $row['subject']; ?></td>
							<td>Rp. <?php echo number_format($row['amount'],0,',','.'); ?></td>
							<td><?php echo $row['update_at']; ?></td>
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
			<!-- Modal -->
			<div class="modal fade" id="modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h4 class="modal-title" id="myModalLabel">Form Tambah expense</h4>
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						</div>
						<div class="modal-body">
							<form method="POST" action="<?php echo $aksi ?>?module=<?php echo $_GET['module'] ?>&act=create" enctype="multipart/form-data">
								<div class="row">
									<div class="col-md-12 form-group">
										<div class="form-group">
											<label class="text-dark">Flow</label>
											<select class="form-control custom-select" name="flow" required>
												<option value="income" <?php echo $_GET['act']=='income' ? 'selected':'' ?>>Income</option>
												<option value="expense" <?php echo $_GET['act']=='expense' ? 'selected':'' ?>>Expense</option>
											</select>
										</div>
										<div class="form-group">
											<label class="text-dark">Payment Type</label>
											<select class="form-control custom-select" name="payment_type" required>
												<option value="transfer">Transfer</option>
												<option value="cash">Cash</option>
											</select>
										</div>
										<div class="form-group">
											<label for="exampleFormControlInput1">Payment Date</label>
											<input type="date" class="form-control" id="exampleFormControlInput1" name="payment_date" placeholder="date" value="<?php echo date("Y-m-d") ?>" required>
										</div>
										<div class="form-group">
											<?php $data = mysqli_query($conn,"SELECT * FROM project order by id desc") ?>
											<label class="text-dark">Project </label>
											<select class="form-control custom-select" name="id_project" required>
												<option selected>--Tidak Berafiliasi dengan project apapun--</option>
												<?php foreach ($data as $row): ?>
													<option value="<?php echo $row['id'] ?>"><?php echo "CRM-".$row['id']." | ".ucwords($row['nama_project']) ?></option>
												<?php endforeach ?>
											</select>
										</div>
										<div class="form-group">
											<label class="text-dark">Amount</label>
											<div class="input-group mb-3">
												<div class="input-group-prepend">
													<span class="input-group-text" id="amount" >Rp.</span>
												</div>
												<input type="Number" class="form-control" name="amount" aria-label="amount" aria-describedby="amount" required>
											</div>
											<div class="form-group">
												<label class="text-dark">Subject</label>
												<input type="text" class="form-control" name="subject" required>
											</div>
											<div class="form-group">
												<label class="text-dark">Deskripsi</label>
												<input type="text" class="form-control" name="description">
											</div>
										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
											<button type="submit" class="btn btn-lg btn-primary">Simpan</button>	
										</div>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>