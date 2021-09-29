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
		<span class="float-right">
			<a class="btn btn-primary ml-2 mb-4 mt-2" href="#" type="button" class="btn btn-success btn-md" data-toggle="modal" data-target="#modal">Tambah Income</a>
		</span><br>
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

			<!-- Modal -->

<div class="modal fade" id="modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        
        <h4 class="modal-title" id="myModalLabel">Form Tambah Income</h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
      </div>
      <div class="modal-body">
        <form method="POST" action="<?php echo $aksi ?>?module=<?php echo $_GET['module'] ?>&act=create" enctype="multipart/form-data">
        <div class="row">
         <div class="col-md-12 form-group">
         <div class="form-group">
         <label class="text-dark">Flow</label>
          <select class="form-control custom-select" name="flow">
          	<option selected disabled>--Pilih salah satu--</option>
			<option value="income">Income</option>
			<option value="expense">Expense</option>
	  </select>
	
          <!-- <input type="text" name="flow" class="form-control" id="exampleFormControlInput1" placeholder="Input field" value="<?php echo $_GET['act'] ?>"> -->
         </div>
         <div class="form-group">
				<label class="text-dark">Payment Type</label>
					<select class="form-control custom-select" name="payment_type">
					<option selected disabled>--Pilih salah satu--</option>
						<option value="transfer">Transfer</option>
						<option value="cash">Cash</option>
					</select>
			</div>
		 	<div class="form-group">
		 		<label for="exampleFormControlInput1">Payment Date</label>
         		<input type="date" class="form-control" id="exampleFormControlInput1" name="payment_date" placeholder="date" value="<?php echo date("Y-m-d") ?>">
			</div>
			<div class="form-group">
          	<?php $data = mysqli_query($conn,"SELECT * FROM project order by id desc") ?>
				<label class="text-dark">Project </label>
					<select class="form-control custom-select" name="id_project">
						<option selected disabled>--Tidak Berafiliasi dengan project apapun--</option>
						<?php foreach ($data as $row): ?>
							<option value="<?php echo $row['id'] ?>"><?php echo ucwords($row['nama_project']) ?></option>
						<?php endforeach ?>
					</select>
			</div>
			<div class="form-group">
				<label class="text-dark">Amount</label>
			<div class="input-group mb-3">
			<div class="input-group-prepend">
				<span class="input-group-text" id="amount" >Rp.</span>
			</div>
			 <input type="Number" class="form-control" name="amount" aria-label="amount" aria-describedby="amount">
			</div>
				
		<div class="form-group">
			 <label class="text-dark">Subject</label>
				<input type="text" class="form-control" name="subject">
		</div>
		<div class="form-group">
			 <label class="text-dark">Status</label>
				<input type="text" class="form-control" name="status">
		</div>
		<div class="form-group">
			 <label class="text-dark">Deskripsi</label>
				<input type="text" class="form-control" name="description">
		</div>
	</div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-lg btn-primary">Simpan</button>	

<!--         <button type="submit" name="simpan" class="btn btn-primary">Save changes</button>
 -->       </form>
   </div> 
</div>
 <!-- <script>function formatNumber(num) {
  return num.toString().replace(/(\d)(?=(\d{3})+(?!\d))/g, '$1,')

alert(formatNumber(1000)) 
</script> -->
</div>
</div>
</div>
</div>
</div>
</div>
</div>
