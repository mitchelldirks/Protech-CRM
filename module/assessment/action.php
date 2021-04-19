<?php 
include '../../config/koneksi.php';
$user   = $_SESSION['id_user'];
$now    = date('Y-m-d H:i:s');
$table  = 'absensi';
$module = $_GET['module'];
$act    = $_GET['act'];
if($act == 'create'){
    $sql="INSERT INTO ".$table." (NIP,tanggal,masuk)
    VALUES ('".$_SESSION['NIP']."', '".date('Y-m-d')."', '".date('Y-m-d H:i:s')."')";
    $query = mysqli_query($conn,$sql);
    $_SESSION['flash']['class']='alert alert-success';
    $_SESSION['flash']['label']='Berhasil Checkin';
    $_SESSION['flash']['icon']='fa fa-check';
    header('Location: ../../media.php?module='.$module);
}else if($act == 'shut'){
    $sql="UPDATE ".$table." SET 
    keluar = '".date('Y-m-d H:i:s')."'
    WHERE NIP = '".$_SESSION['NIP']."' and tanggal = '".date('Y-m-d')."'";
    $query = mysqli_query($conn, $sql);
    $_SESSION['flash']['class']='alert alert-success';
    $_SESSION['flash']['label']='Berhasil Checkout';
    $_SESSION['flash']['icon']='fa fa-edit';
    header('Location: ../../media.php?module='.$module);
}else if($act == 'izin'){

    $sql="UPDATE ".$table." SET 
    keluar = '".date('Y-m-d H:i:s')."'
    WHERE NIP = '".$_SESSION['NIP']."' and tanggal = '".date('Y-m-d')."'";
    $query = mysqli_query($conn, $sql);
    $_SESSION['flash']['class']='alert alert-warning';
    $_SESSION['flash']['label']='Izin telah dimasukan';
    $_SESSION['flash']['icon']='fa fa-edit';
    header('Location: ../../media.php?module='.$module);
}
?>