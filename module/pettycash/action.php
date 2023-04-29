<?php 
include '../../config/koneksi.php';
$user   = $_SESSION['id_user'];
$now    = date('Y-m-d H:i:s');
$table  = 'pettycash';
$module = $_GET['module'];
$act    = $_GET['act'];
if ($act!=null) {
    $data = isset($_GET['id']) ? $_GET['id'] : isset($_POST['id']) ? $_POST['id'] : "new entry";
    mysqli_query($conn,"INSERT INTO pettycash (action,module,data,info,created_by,created_at) values ('".ucwords($act)."','".ucwords($module)."','".ucwords($data)."','".ucwords($module." ".$act." ".$data)."','$user','$now')");
}
if($act == 'create'){
    $sql="INSERT INTO ".$table." (flow, payment_type, payment_date, id_project, subject, description, amount, create_by, create_at, update_by, update_at)
    VALUES ('".$_POST['flow']."','".$_POST['payment_type']."','".$_POST['payment_date']."', '".$_POST['id_project']."','".$_POST['subject']."','".$_POST['description']."','".$_POST['amount']."', '$user','$now','$user','$now')";
    $query = mysqli_query($conn,$sql);
    $_SESSION['flash']['class']='alert alert-success';
    $_SESSION['flash']['label']='Penambahan '.$_GET['module'].' Berhasil';
    $_SESSION['flash']['icon']='fa fa-check';
    header('Location: ../../media.php?module='.$module."&act=".$_POST['flow']);
}else if($act == 'edit'){
    $sql="UPDATE ".$table." SET 
    flow            = '".$_POST['flow']."', 
    payment_type    = '".$_POST['payment_type']."', 
    payment_date    = '".$_POST['payment_date']."',    
    id_project      = '".$_POST['id_project']."', 
    subject         = '".$_POST['subject']."',
    description     = '".$_POST['description']."', 
    amount          = '".$_POST['amount']."',
    update_by      = '$user',
    update_at      = '$now'
    WHERE id = '".$_POST['id']."'";
    $query = mysqli_query($conn, $sql);
    $_SESSION['flash']['class']='alert alert-success';
    $_SESSION['flash']['label']='Pengubahan '.$_GET['module'].' Berhasil';
    $_SESSION['flash']['icon']='fa fa-edit';
    header('Location: ../../media.php?module='.$module."&act=".$_POST['flow']);
}else if($act == 'delete'){
    $query = mysqli_query($conn, "DELETE FROM ".$table." WHERE id = '".$_GET['id']."'");
    $_SESSION['flash']['class']='alert alert-danger';
    $_SESSION['flash']['label']='Penghapusan '.$_GET['module'].' Berhasil';
    $_SESSION['flash']['icon']='fa fa-trash';
    header('Location: ../../media.php?module='.$module."&act=".$_GET['flow']);
}
?>