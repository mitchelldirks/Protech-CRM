<?php 
include '../../config/koneksi.php';
// include '../../config/upload.php';
$user   = $_SESSION['id_user'];
$now    = date('Y-m-d H:i:s');
$table  = 'pegawai';
$module = $_GET['module'];
$act    = $_GET['act'];
if ($act!=null) {
    $data = isset($_GET['id']) ? $_GET['id'] : isset($_POST['id']) ? $_POST['id'] : "new entry";
    mysqli_query($conn,"INSERT INTO log (action,module,data,info,created_by,created_at) values ('".ucwords($act)."','".ucwords($module)."','".ucwords($data)."','".ucwords($module." ".$act." ".$data)."','$user','$now')");
}
if($act == 'create'){
    $sql="INSERT INTO ".$table." (nama_pegawai, tel, email, jabatan, tempatlahir, tanggallahir,created_by,created_at,updated_by,updated_at)
    VALUES ('".$_POST['nama_pegawai']."', '".$_POST['tel']."', '".$_POST['email']."','".$_POST['jab']."', '".$_POST['pob']."', '".$_POST['dob']."','$user','$now','$user','$now')";
    $query = mysqli_query($conn,$sql);
    $sql   =  "INSERT INTO user (id_pegawai,nama, username, password, level)
    VALUES ('".mysqli_insert_id($conn)."','".$_POST['nama_pegawai']."', '".usernameInitial($_POST['nama_pegawai'])."', '".sha1(md5(usernameInitial($_POST['nama_pegawai'])))."','".$_POST['jab']."')";
    $query = mysqli_query($conn,$sql);
    $_SESSION['flash']['class']='alert alert-success';
    $_SESSION['flash']['label']='Penambahan '.$_GET['module'].' Berhasil';
    $_SESSION['flash']['icon']='fa fa-check';
    header('Location: ../../media.php?module='.$module);
}else if($act == 'edit'){
    $sql="UPDATE ".$table." SET 
    nama_pegawai    = '".$_POST['nama_pegawai']."', 
    tel             = '".$_POST['tel']."', 
    email           = '".$_POST['email']."',
    jabatan         = '".$_POST['jab']."', 
    tempatlahir     = '".$_POST['pob']."', 
    tanggallahir    = '".$_POST['dob']."',
    updated_by      = '$user',
    updated_at      = '$now'
    WHERE id = '".$_POST['id']."'";
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
    $sql="UPDATE ".$table." SET 
    is_active = '0'
    WHERE id = '".$_GET['id']."'";
    $query = mysqli_query($conn, $sql);
    $sql="UPDATE user SET 
    is_active = '0'
    WHERE id_pegawai = '".$_GET['id']."'";
    $query = mysqli_query($conn, $sql);
    $_SESSION['flash']['class']='alert alert-danger';
    $_SESSION['flash']['label']='Penghapusan '.$_GET['module'].' Berhasil';
    $_SESSION['flash']['icon']='fa fa-trash';
    header('Location: ../../media.php?module='.$module);
}
?>