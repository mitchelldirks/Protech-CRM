<?php 
$aksi 	= "module/".$_GET['module']."/action.php";
if ($_SESSION['level']!='admin') {
	$row 	= mysqli_fetch_array(mysqli_query($conn,"SELECT * FROM pegawai where NIP = '".$_SESSION['NIP']."'"));
}else{
	$row 	= mysqli_fetch_array(mysqli_query($conn,"SELECT * FROM pegawai where NIP = '".$_GET['id']."'"));
}
?>
<div class="col-xl-12 col-lg-12 col-md-12 col-12 layout-spacing card">
	<div class="widget-content-area br-4 ">
		<form method="POST" action="<?php echo $aksi ?>?module=<?php echo $_GET['module'] ?>&act=<?php echo $_GET['act'] ?>" enctype="multipart/form-data">
			<input type="hidden" name="NIP" value="<?php echo $row['NIP']; ?>">
			<div class="row">
				<div class="col-md-6 col-xs-12 form-group">
					<label class="text-dark">NIP</label>
					<input type="text" class="form-control" name="NIP" value="<?php echo $row['NIP']; ?>">
				</div>
				<div class="col-md-6 col-xs-12 form-group">
					<label class="text-dark">Nama</label>
					<input type="text" class="form-control" name="nama_pegawai" value="<?php echo $row['nama_pegawai']; ?>">
				</div>
				<div class="col-md-6 col-xs-12 form-group">
					<label class="text-dark">Telpon</label>
					<input type="text" class="form-control" name="tel" value="<?php echo $row['tel']; ?>">
				</div>
				<div class="col-md-6 col-xs-12 form-group">
					<label class="text-dark">Email</label>
					<input type="email" class="form-control" name="email" value="<?php echo $row['email']; ?>">
				</div>
				<div class="col-md-6 col-xs-12 form-group">
					<label class="text-dark">Tempat Lahir</label>
					<input type="text" class="form-control" name="pob" value="<?php echo $row['tempatlahir']; ?>">
				</div>
				<div class="col-md-6 col-xs-12 form-group">
					<label class="text-dark">Tanggal Lahir</label>
					<input type="date" class="form-control" name="dob" value="<?php echo $row['tanggallahir']; ?>">
				</div>
				<div class="col-md-6 col-xs-12 form-group">
					<label class="text-dark">Jabatan</label>
					<select class="form-control" name="jab" readonly>
						<?php 
						$jab=mysqli_query($conn,"SELECT * from jabatan order by nama_jabatan");
						foreach ($jab as $j) {
							echo '<option value="'.ucwords($j['id']).'">'.ucwords($j['nama_jabatan']).'</option>';
						}
						?>
					</select>
				</div>
				<div class="col-md-6 col-xs-12 form-group">
					<label class="text-dark">Foto <span class="text-muted">* Abaikan jika tidak ada perubahan</span></label><br/>
					<?php if(!empty($row['foto'])){ ?>
						<img src="assets/images/pegawai/<?php echo $row['foto']; ?>" style="max-width: 200px;"><br/>
					<?php } ?>
					<input type="file" class="form-control" name="images">
				</div>
				<div class="col-md-12 col-xs-12 form-group">
					<button type="submit" class="btn btn-lg btn-primary">Simpan</button>	
				</div>
			</div>
		</form>
	</div>
</div>