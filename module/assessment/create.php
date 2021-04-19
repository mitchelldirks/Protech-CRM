<?php $aksi = "module/".$_GET['module']."/action.php"; 
$detail  = mysqli_fetch_array(mysqli_query($conn,"SELECT * FROM pegawai where NIP = '".$_SESSION['NIP']."'"));
$jabatan  = mysqli_fetch_array(mysqli_query($conn,"SELECT * FROM jabatan where id = '".$detail['jabatan']."'"));
?>
<?php 
$sql="SELECT * from absensi where NIP = '".$_SESSION['NIP']."' and tanggal = '".date('Y-m-d')."'";
$query=mysqli_query($conn,$sql);
// echo $sql;
if (mysqli_num_rows($query)==0): ?>
	<div class="col-xl-8 col-lg-8 col-md-12 col-sm-12 layout-spacing card ">
		<div class="widget-content-area br-4 ">
			<form action="<?php echo $aksi ?>?module=<?php echo $_GET['module'] ?>&act=izin">
				<div class="form-group mt-3">
					<input type="text" class="form-control" name="izin" placeholder="Isi bila berhalangan dengan alasan">
				</div>
			</form>
		</div>
	</div>
	<div class="col-xl-4 col-lg-4 col-md-12  col-sm-12layout-spacing card">
		<div class="widget-content-area br-4 ">

			<span class="float-right mt-3"><a class="btn btn-danger" href="<?php echo $aksi ?>?module=<?php echo $_GET['module'] ?>&act=create" title="Klik untuk Absen Masuk"><i data-feather="log-in"></i></a></span>
			<h3 class="p-2 mt-2">Checkin</h3>
		</div>
	</div>
	<?php else: ?>
		<div class="col-xl-8 col-lg-8 col-md-12 col-sm-12 layout-spacing card">
			<div class="widget-content-area br-4 ">
				<form action="<?php echo $aksi ?>?module=<?php echo $_GET['module'] ?>&act=izin">
					<div class="form-group mt-3">
						<input type="text" class="form-control" name="izin" placeholder="Isi bila berhalangan dengan alasan">
					</div>
				</form>
			</div>
		</div>

		<div class="col-xl-4 col-lg-4 col-md-12  col-sm-12 layout-spacing card">
			<div class="widget-content-area br-4 ">
				<span class="float-right mt-3"><a class="btn btn-danger" href="<?php echo $aksi ?>?module=<?php echo $_GET['module'] ?>&act=shut" title="Klik untuk Absen Masuk"><i data-feather="power"></i></a></span>
				<h3 class="p-2 mt-2">Checkout</h3>
			</div>
		</div>
	<?php endif ?>
	<div class="col-xl-12 col-lg-12 col-md-12 col-12 layout-spacing card">
		<div class="widget-content-area br-4 ">
			<div class="row">
				<div class="col-md-4 col-lg-4 col-xl-4 box-col-6 col-xs-12 col-sm-6">
					<div class=" custom-card">
						<!-- <div class="card-header"><img class="img-fluid" src="assets/images/user-card/1.jpg" alt=""></div> -->
						<div class="card-profile"><img class="rounded-circle" src="assets/images/pegawai/<?php echo $detail['img'] ?>" alt=""></div>
						<div class="text-center profile-details">
							<h4><?php echo ucwords($detail['nama_pegawai']) ?></h4>
							<h6><?php echo ucwords($jabatan['nama_jabatan']) ?></h6>
						</div>
						<div class="card-footer row">
							<div class="col-4 col-sm-4">
								<h6>Bulan</h6>
								<h3 class="counter">9564</h3>
							</div>
							<div class="col-4 col-sm-4">
								<h6>Tahun</h6>
								<h3><span class="counter">49</span>K</h3>
							</div>
							<div class="col-4 col-sm-4">
								<h6>Total</h6>
								<h3><span class="counter">96</span>M</h3>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-8 col-lg-8 col-xl-8 col-xs-12 col-sm-6 box-col-6">
					<div class=" custom-card ">
						<div class="row">
							<div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-xs-12 form-group">
								<label class="text-dark">NIP</label>
								<input class="form-control-plaintext bg-transparent border-bottom" style="border-bottom: 2px solid lightblue"  readonly type="text"  name="NIP" value="<?php echo $detail['NIP']; ?>">
							</div>
							<div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-xs-12 form-group">
								<label class="text-dark">Nama</label>
								<input class="form-control-plaintext bg-transparent border-bottom" style="border-bottom: 1px solid lightblue"  readonly type="text"  name="nama_pegawai" value="<?php echo $detail['nama_pegawai']; ?>">
							</div>
							<div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-xs-12 form-group">
								<label class="text-dark">Telpon</label>
								<input class="form-control-plaintext bg-transparent border-bottom" style="border-bottom: 1px solid lightblue"  readonly type="text"  name="tel" value="<?php echo $detail['tel']; ?>">
							</div>
							<div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-xs-12 form-group">
								<label class="text-dark">Email</label>
								<input class="form-control-plaintext bg-transparent border-bottom" style="border-bottom: 1px solid lightblue"  readonly type="email"  name="email" value="<?php echo $detail['email']; ?>">
							</div>
							<div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-xs-12 form-group">
								<label class="text-dark">Tempat Lahir</label>
								<input class="form-control-plaintext bg-transparent border-bottom" style="border-bottom: 1px solid lightblue"  readonly type="text"  name="pob" value="<?php echo $detail['tempatlahir']; ?>">
							</div>
							<div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-xs-12 form-group">
								<label class="text-dark">Tanggal Lahir</label>
								<input class="form-control-plaintext bg-transparent border-bottom" style="border-bottom: 1px solid lightblue"  readonly type="date"  name="dob" value="<?php echo $detail['tanggallahir']; ?>">
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>