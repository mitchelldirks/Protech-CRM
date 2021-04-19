<?php 
$aksi 	= "module/".$_GET['module']."/action.php";
$row 	= mysqli_fetch_array(mysqli_query($conn,"SELECT * FROM project where id = '".$_GET['id']."'"));
?>

<div class="col-xl-12 col-lg-12 col-md-12 col-12 layout-spacing card">
	<div class="widget-content-area br-4 ">
		<form method="POST" action="<?php echo $aksi ?>?module=<?php echo $_GET['module'] ?>&act=<?php echo $_GET['act'] ?>" enctype="multipart/form-data">
			<input type="hidden" name="id" value="<?php echo $row['id']; ?>">
			<div class="row">
				

				<div class="col-md-12 col-xs-12 form-group">
					<label class="text-dark">Nama</label>
					<input type="text" class="form-control" name="nama_project" value="<?php echo $row['nama_project']; ?>">
				</div>


				<div class="col-md-12 col-xs-12 form-group">
					<label class="text-dark">Deskripsi</label>
					<textarea class="form-control" name="deskripsi"><?php echo $row['deskripsi']; ?></textarea>
				</div>

				<div class="col-md-12 col-xs-12 form-group">
					<button type="submit" class="btn btn-lg btn-primary">Simpan</button>	
				</div>
			</div>
		</form>
	</div>
</div>