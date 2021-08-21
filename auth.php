<?php
include('config/koneksi.php');
$user = $_POST['username'];
$pass = sha1(md5($_POST['password']));
$sql = "SELECT * from user where password='$pass' and username='$user'";
$query = mysqli_query($conn, $sql);
$data = mysqli_fetch_assoc($query);
$row = mysqli_num_rows($query);
if ($data['is_active']=="0" && $row > 0) {
	$_SESSION['flash']['class']='alert alert-danger';
	$_SESSION['flash']['label']='Akun anda tidak aktif';
	$_SESSION['flash']['iconn']='fa fa-ban';
	$_SESSION['flash']['username']=$_POST['username'];
	header('location: index.php');
}else{
	if ($row > 0) {
		$_SESSION['id_user'] = $data['id_pegawai'];
		if (strtolower($data['level'])=='admin') {
			$_SESSION['logged'] = 'admin';
			$_SESSION['level'] = 'admin';
			$_SESSION['id_user'] = $data['id_pegawai'] > 0 ? $data['id_pegawai'] : 0;
		}elseif ($data['level'] > 0) {
			$logged=mysqli_fetch_assoc(mysqli_query($conn,"SELECT * from jabatan where id='".$data['level']."'"));
			$_SESSION['logged'] = $logged['nama_jabatan'];
			$_SESSION['level'] = $logged['nama_jabatan'];
		}else{
			$_SESSION['logged'] = null;
		}
		$_SESSION['last']= $data['last_activity'];
		$_SESSION['name'] = $data['nama'];
		$_SESSION['username'] = $data['username'];
		if (!empty($_POST["checkbox"])) {
			setcookie("username", $_POST['username']);
			setcookie("password", $_POST['password']);
		}
		if (strlen($_POST['redirect']) > 0) {
			header('location: '.$_POST['redirect']);
		}else{
			header('location: media.php');
		}
	}
	else {
		$_SESSION['flash']['class']='alert alert-danger';
		$_SESSION['flash']['label']='Username atau password salah';
		$_SESSION['flash']['iconn']='fa fa-ban';
		$_SESSION['flash']['username']=$_POST['username'];
		header('location: index.php');
	}
}
?>