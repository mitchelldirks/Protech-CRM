<?php $aksi = "module/".$_GET['module']."/action.php"; ?>
<div class="col-xl-12 col-lg-12 col-md-12 col-12 layout-spacing card">
	<div class="widget-content-area br-4 ">
		<form method="POST" action="<?php echo $aksi ?>?module=<?php echo $_GET['module'] ?>&act=<?php echo $_GET['act'] ?>" enctype="multipart/form-data">
			<div class="row">

				<div class="col-md-6 col-xs-12 form-group">
					<label class="text-dark">NIP</label>
					<input type="text" class="form-control" name="NIP">
				</div>

				<div class="col-md-6 col-xs-12 form-group">
					<label class="text-dark">Nama</label>
					<input type="text" class="form-control" name="nama_pegawai">
				</div>

				<div class="col-md-6 col-xs-12 form-group">
					<label class="text-dark">Telpon</label>
					<input type="text" class="form-control" name="tel">
				</div>

				<div class="col-md-6 col-xs-12 form-group">
					<label class="text-dark">Email</label>
					<input type="email" class="form-control" name="email">
				</div>

				<div class="col-md-6 col-xs-12 form-group">
					<label class="text-dark">Tempat Lahir</label>
					<input type="text" class="form-control" name="pob">
				</div>

				<div class="col-md-6 col-xs-12 form-group">
					<label class="text-dark">Tanggal Lahir</label>
					<input type="date" class="form-control" name="dob">
				</div>

				<div class="col-md-6 col-xs-12 form-group">
					<label class="text-dark">Jabatan</label>
					<select class="form-control" name="jab">
						<?php 
						$jab=mysqli_query($conn,"SELECT * from jabatan order by nama_jabatan");
						foreach ($jab as $j) {
							echo '<option value="'.ucwords($j['id']).'">'.ucwords($j['nama_jabatan']).'</option>';
						}
						?>
					</select>
				</div>

				<div class="col-md-6 col-xs-12 form-group">
					<label class="text-dark">Foto</label>
					<input type="file" class="form-control" name="images">
				</div>

				<div class="col-md-12 col-xs-12 form-group">
					<button type="submit" class="btn btn-lg btn-primary">Simpan</button>	
				</div>
			</div>
		</form>
	</div>
</div>