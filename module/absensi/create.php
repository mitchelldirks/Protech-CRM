<?php 
$aksi = "module/".$_GET['module']."/action.php"; 
?>

<div class="col-xl-12 col-lg-12 col-md-12 col-12 layout-spacing">
	<div class="widget-content-area br-4 ">
		<form method="POST" action="<?php echo $aksi ?>?module=<?php echo $_GET['module'] ?>&act=<?php echo $_GET['act'] ?>" enctype="multipart/form-data">
			<div class="row">
				
				<div class="col-md-4 col-xs-12 form-group">
					<label class="text-dark">Pegawai</label>
					<select class="form-control" name="id_user">
						<?php
						$pegawai = mysqli_query($conn, "SELECT * FROM user WHERE level = 'pegawai'");
						foreach($pegawai as $row){
							echo '<option value="'.$row['id'].'">'.$row['nama'].'</option>';
						}
						?>
					</select>
				</div>

				<div class="col-md-4 col-xs-12 form-group">
					<label class="text-dark">Tanggal</label>
					<input type="date" class="form-control" name="tanggal" value="<?php echo date('Y-m-d'); ?>">
				</div>

				<div class="col-md-4 col-xs-12 form-group">
					<label class="text-dark">Jam Masuk</label>
					<input type="time" class="form-control" name="masuk" value="<?php echo date('H:i:s'); ?>">
				</div>

				<div class="col-md-12 col-xs-12 form-group">
					<button type="submit" class="btn btn-lg btn-primary">Simpan</button>	
				</div>
			</div>
		</form>
	</div>
</div>