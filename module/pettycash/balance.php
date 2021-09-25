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
			<a class="btn btn-primary ml-2 mb-4 mt-2" href="#" type="button" class="btn btn-success btn-md" data-toggle="modal" data-target="#modal">Tambah Balance</a>
		</span><br>
		<form method="GET">
                  <label for="date1">Date From</label>
                  <input type="date" name="date1" value="<?php echo date('y-m-d') ?>">
                  <label for="date2">&nbsp;Date To</label>
                  <input type="date" name="date2" value="<?php echo date('y-m-d') ?>">
                  <input type="submit" name="submit" class="btn btn-primary" value="filter">
         </form>
		<div class="table-responsive mb-4 mt-4">
			<table id="basic-1" class="table table-hover" style="width:100%">
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
							<td><?php echo @$row['nama']; ?></td>
							<td><?php echo $row['subject']; ?></td>
							<td><?php echo number_format($row['amount'],0,',','.'); ?></td>
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

			<!-- Modal -->
<div class="modal fade" id="modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        
        <h4 class="modal-title" id="myModalLabel">Form Tambah Balance</h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
      </div>
      <div class="modal-body">
        <form method="POST" action="<?php echo $aksi ?>?module=<?php echo $_GET['module'] ?>&act=<?php echo $_GET['act'] ?>" enctype="multipart/form-data">
         <div class="col-md-12 form-group">
         <div class="form-group">
          <label for="">Flow</label>
          <input type="text" name="flow" class="form-control" id="exampleFormControlInput1" placeholder="Input field">
         </div>
         <div class="form-group">
          <?php $data = mysqli_query($conn,"SELECT * FROM kategori order by nama_kategori") ?>
				<label class="text-dark">Kategori</label>
					<select class="form-control custom-select" name="kategori">
						<?php foreach ($data as $row): ?>
							<option value="<?php echo $row['id'] ?>"><?php echo ucwords($row['nama_kategori']) ?></option>
						<?php endforeach ?>
					</select>
			</div>
		 	<div class="form-group">
		 		<label for="exampleFormControlInput1">Nama</label>
         		<input type="text" class="form-control" id="exampleFormControlInput1" placeholder="input your name" name="nama">
			</div>
			<div class="form-group">
				<label class="text-dark">Amount</label>
			<div class="input-group mb-3">
			<div class="input-group-prepend">
				<span class="input-group-text" id="amount">Rp.</span>
			</div>
			 <input type="formatNumber" class="form-control" name="amount" aria-label="nominal" aria-describedby="nominal">
			</div>
				
		<div class="form-group">
			 <label class="text-dark">Subject</label>
			 <input type="text" class="form-control">
		</div>
	</div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="submit" name="simpan" class="btn btn-primary">Save changes</button>
       </form>
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
