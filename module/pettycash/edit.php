<?php 
$aksi 	= "module/".$_GET['module']."/action.php";
$row 	= mysqli_fetch_array(mysqli_query($conn,"SELECT * FROM pettycase where id = '".$_GET['id']."'"));
?>

<div class="col-xl-12 col-lg-12 col-md-12 col-12 layout-spacing card">
	<div class="widget-content-area br-4 ">
		<form method="POST" action="<?php echo $aksi ?>?module=<?php echo $_GET['module'] ?>&act=<?php echo $_GET['act'] ?>" enctype="multipart/form-data">
			<input type="hidden" name="id" value="<?php echo $row['id']; ?>">
			<div class="row">
				

				<div class="col-md-12 col-xs-12 form-group">
					<label class="text-dark">Flow</label>
					<input type="text" class="form-control" name="flow" value="<?php echo $row['flow']; ?>">
				</div>


				<div class="col-md-12 col-xs-12 form-group">
					<label class="text-dark">Kategori</label>
					<textarea class="form-control" name="kategori"><?php echo $row['nama_kategori']; ?></textarea>
				</div>
				<div class="col-md-12 col-xs-12 form-group">
					<label class="text-dark">Nama </label>
					<input type="text" class="form-control" name="nama" value="<?php echo $row['nama']; ?>">
				</div>

				<div class="col-md-12 col-xs-12 form-group">
					<label class="text-dark">Subject</label>
					<input type="text" class="form-control" name="subject" value="<?php echo $row['subject']; ?>">
				</div>
				<div class="col-md-12 col-xs-12 form-group">
					<label class="text-dark">Amount</label>
					<input type="text" class="form-control" name="flow" value="<?php echo $row['amount']; ?>">
				</div>
				<div class="col-md-12 col-xs-12 form-group">
					<button type="submit" class="btn btn-lg btn-primary">Simpan</button>	
				</div>
			</div>
		</form>
	</div>
</div>