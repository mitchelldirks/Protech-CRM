<?php 
include '../../config/koneksi.php';
include '../../config/upload.php';
$user   = $_SESSION['id_user'];
$now    = date('Y-m-d H:i:s');
$table  = 'pegawai';
$module = $_GET['module'];
$act    = $_GET['act'];
$lokasi_file    = $_FILES['images']['tmp_name'];
$tipe_file      = $_FILES['images']['type'];
$nama_file      = $_FILES['images']['name'];
if($act == 'create'){
    if(!empty($lokasi_file)){
        UploadDirectory($nama_file,'pegawai');
        $sql="INSERT INTO ".$table." (NIP, nama_pegawai, tel, email, jabatan, tempatlahir, tanggallahir, img)
        VALUES ('".$_POST['NIP']."', '".$_POST['nama_pegawai']."', '".$_POST['tel']."', '".$_POST['email']."','".$_POST['jab']."', '".$_POST['pob']."', '".$_POST['dob']."', '".$nama_file."')";
    }else{
        $sql="INSERT INTO ".$table." (NIP, nama_pegawai, tel, email, jabatan, tempatlahir, tanggallahir, img)
        VALUES ('".$_POST['NIP']."', '".$_POST['nama_pegawai']."', '".$_POST['tel']."', '".$_POST['email']."','".$_POST['jab']."', '".$_POST['pob']."', '".$_POST['dob']."')";
    }
    $query = mysqli_query($conn,$sql);
    $sql   =  "INSERT INTO user (nama, username, password, level)
    VALUES ('".$_POST['nama_pegawai']."', '".$_POST['NIP']."', '".md5($_POST['NIP'])."','".$_POST['jab']."')";
    $query = mysqli_query($conn,$sql);
    $_SESSION['flash']['class']='alert alert-success';
    $_SESSION['flash']['label']='Penambahan '.$_GET['module'].' Berhasil';
    $_SESSION['flash']['icon']='fa fa-check';
    // print_r($sql);exit;
    header('Location: ../../media.php?module='.$module);
}else if($act == 'edit'){
    if(!empty($lokasi_file)){
        UploadDirectory($nama_file,'pegawai');
        $sql="UPDATE ".$table." SET 
        NIP = '".$_POST['NIP']."', 
        nama_pegawai = '".$_POST['nama_pegawai']."', 
        tel = '".$_POST['tel']."', 
        email = '".$_POST['email']."',
        jabatan = '".$_POST['jab']."', 
        tempatlahir = '".$_POST['pob']."', 
        tanggallahir = '".$_POST['dob']."', 
        img = '".$nama_file."'
        WHERE NIP = '".$_POST['NIP']."'";
    }else{
        $sql="UPDATE ".$table." SET 
        NIP = '".$_POST['NIP']."', 
        nama_pegawai = '".$_POST['nama_pegawai']."', 
        tel = '".$_POST['tel']."', 
        email = '".$_POST['email']."',
        jabatan = '".$_POST['jab']."', 
        tempatlahir = '".$_POST['pob']."', 
        tanggallahir = '".$_POST['dob']."' 
        WHERE NIP = '".$_POST['NIP']."'";
    }
    // print_r($sql);exit;
    $query = mysqli_query($conn, $sql);
    $_SESSION['flash']['class']='alert alert-warning';
    $_SESSION['flash']['label']='Pengubahan '.$_GET['module'].' Berhasil';
    $_SESSION['flash']['icon']='fa fa-edit';
    if ($_SESSION['level']!='admin') {
        header('Location: ../../media.php?module='.$module.'&act='.$act);
    }else{
        header('Location: ../../media.php?module='.$module);
    }
}else if($act == 'delete'){
    $query = mysqli_query($conn, "DELETE FROM ".$table." WHERE id = '".$_GET['id']."'");
    $_SESSION['flash']['class']='alert alert-danger';
    $_SESSION['flash']['label']='Penghapusan '.$_GET['module'].' Berhasil';
    $_SESSION['flash']['icon']='fa fa-trash';
    header('Location: ../../media.php?module='.$module);
}
?>