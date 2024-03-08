<?php 
$aksi 	= "module/".$_GET['module']."/action.php";
$row 	= mysqli_fetch_array(mysqli_query($conn,"SELECT * FROM jabatan where id = '".$_GET['id']."'"));
?>

<div class="col-xl-12 col-lg-12 col-md-12 col-12 layout-spacing card">
	<div class="widget-content-area br-4 ">
		<form method="POST" action="<?php echo $aksi ?>?module=<?php echo $_GET['module'] ?>&act=<?php echo $_GET['act'] ?>" enctype="multipart/form-data">
			<input type="hidden" name="id" value="<?php echo $row['id']; ?>">
			<div class="row">
				

				<div class="col-md-12 col-xs-12 form-group">
					<label class="text-dark">Nama</label>
					<input type="text" class="form-control" name="nama_jabatan" value="<?php echo $row['nama_jabatan']; ?>">
				</div>


				<div class="col-md-12 col-xs-12 form-group">
					<label class="text-dark">Job Description</label>
					<textarea class="form-control" name="job_desc"><?php echo $row['job_desc']; ?></textarea>
				</div>

				<div class="col-md-12 col-xs-12 form-group">
					<button type="submit" class="btn btn-lg btn-primary">Simpan</button>	
				</div>
			</div>
		</form>
	</div>
</div>