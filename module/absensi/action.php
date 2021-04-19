<?php 
include '../../config/koneksi.php';
include '../../config/upload.php';

$user   = $_SESSION['id_user'];
$now    = date('Y-m-d H:i:s');
$table  = 'absensi';

$module = $_GET['module'];
$act    = $_GET['act'];

if($act == 'create'){

    if($_POST['masuk'] <= '08:00:00'){
        $query = mysqli_query($conn, "INSERT INTO ".$table." (id_user, tanggal, masuk, status)
            VALUES ('".$_POST['id_user']."', '".$_POST['tanggal']."', '".$_POST['masuk']."', 'On Time')");
    }else{
        $query = mysqli_query($conn, "INSERT INTO ".$table." (id_user, tanggal, masuk, status)
            VALUES ('".$_POST['id_user']."', '".$_POST['tanggal']."', '".$_POST['masuk']."', 'Terlambat')");
    }

    $_SESSION['flash']['class']='alert alert-success';
    $_SESSION['flash']['label']='Penambahan '.$_GET['module'].' Berhasil';
    $_SESSION['flash']['icon']='fa fa-check';

    header('Location: ../../media.php?module='.$module);

}else if($act == 'edit'){

    $query = mysqli_query($conn, "UPDATE ".$table." SET kode_transaksi='".$_POST['kode_transaksi']."', 
        tanggal = '".$_POST['tanggal']."',
        user = '".$_POST['user']."',
        due_date = '".$_POST['due_date']."' WHERE id = '".$_POST['id']."'");

    $_SESSION['flash']['class']='alert alert-warning';
    $_SESSION['flash']['label']='Pengubahan '.$_GET['module'].' Berhasil';
    $_SESSION['flash']['icon']='fa fa-edit';

    header('Location: ../../media.php?module='.$module);

}else if($act == 'delete'){

    $query = mysqli_query($conn, "DELETE FROM ".$table." WHERE id = '".$_GET['id']."'");

    $_SESSION['flash']['class']='alert alert-danger';
    $_SESSION['flash']['label']='Penghapusan '.$_GET['module'].' Berhasil';
    $_SESSION['flash']['icon']='fa fa-trash';

    header('Location: ../../media.php?module='.$module);

}else if($act == 'checkout'){

    $update = mysqli_query($conn, "UPDATE ".$table." SET keluar = '".date('H:i:s')."' WHERE id = '".$_GET['id']."'");

    $_SESSION['flash']['class']='alert alert-warning';
    $_SESSION['flash']['label']='Checkout '.$_GET['module'].' Berhasil';
    $_SESSION['flash']['icon']='fa fa-edit';

    header('Location: ../../media.php?module='.$module);

}else if($act == 'delete_detail'){

    $query = mysqli_query($conn, "DELETE FROM detail_transaksi WHERE id = '".$_GET['id']."'");

    $_SESSION['flash']['class']='alert alert-danger';
    $_SESSION['flash']['label']='Penghapusan '.$_GET['module'].' Berhasil';
    $_SESSION['flash']['icon']='fa fa-trash';

    header('Location: ../../media.php?module='.$module.'&act=detail&id='.$_GET['transaksi']);

}else if($act == 'finish'){

    $query = mysqli_query($conn, "UPDATE ".$table." SET finish_date = '".date('Y-m-d')."', 
        status = 'Finish' WHERE id = '".$_GET['id']."'");

    $_SESSION['flash']['class']='alert alert-warning';
    $_SESSION['flash']['label']='Pengubahan '.$_GET['module'].' Berhasil';
    $_SESSION['flash']['icon']='fa fa-edit';

    header('Location: ../../media.php?module='.$module);
}

?>