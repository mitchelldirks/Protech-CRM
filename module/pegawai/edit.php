<?php 
$aksi 	= "module/".$_GET['module']."/action.php";
if ($_SESSION['level']!='admin') {
	$row 	= mysqli_fetch_array(mysqli_query($conn,"SELECT * FROM pegawai where id = '".$_SESSION['id_user']."'"));
}else{
	$row 	= mysqli_fetch_array(mysqli_query($conn,"SELECT * FROM pegawai where id = '".$_GET['id']."'"));
}
?>
<div class="col-xl-12 col-lg-12 col-md-12 col-12 layout-spacing card">
	<?php 
	if (isset($_SESSION['flash'])): ?>
		<div class="<?php echo $_SESSION['flash']['class']; ?> mt-3 mb-3"> 
			<i class="<?php echo $_SESSION['flash']['icon'] ?>"></i> <?php echo $_SESSION['flash']['label']; ?>
			<button type="button" class="close" data-dismiss="alert" aria-label="Close"> <span aria-hidden="true">×</span> </button>
		</div>
	<?php endif ?>
	<div class="widget-content-area br-4 ">
		<form method="POST" action="<?php echo $aksi ?>?module=<?php echo $_GET['module'] ?>&act=<?php echo $_GET['act'] ?>" enctype="multipart/form-data">
			<input type="hidden" name="id" value="<?php echo $row['id']; ?>">
			<div class="row">
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
					<?php
					$jab=mysqli_query($conn,"SELECT * from jabatan where id = $row[jabatan] order by nama_jabatan");
					$j=mysqli_fetch_array($jab);
					?>
					<input type="text" readonly class="form-control" value="<?php echo ucwords($j['nama_jabatan']); ?>">
					<input type="hidden" class="form-control" name="jab" value="<?php echo ($j['id']); ?>">
				</div>
				<?php
				if ($_SESSION['level']!='admin') {
					?>
					<div class="col-md-6 col-xs-12 form-group">
						<label class="text-dark">New Password</label>
						<input type="password" id="password" class="form-control" name="password">
					</div>
					<div class="col-md-6 col-xs-12 form-group">
						<label class="text-dark">Confirm Password</label>
						<input type="password" id="Cpassword" class="form-control" name="Cpassword">
						<span id='message'></span>
					</div>
				<?php } ?>
				<div class="col-md-12 col-xs-12 form-group">
					<button type="submit" class="btn btn-lg btn-primary">Simpan</button>
				</div>
			</div>
		</form>
	</div>
</div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script type="text/javascript">
	$('#password, #Cpassword').on('keyup', function () {
		if ($('#password').val() == $('#Cpassword').val()) {
			$('#message').html('Password Match').css('color', 'green');
		} else {
			$('#message').html('Password Not Match').css('color', 'red');
		}
	});
</script>
