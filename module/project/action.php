<?php 
include '../../config/koneksi.php';
$user   = $_SESSION['id_user'];
$now    = date('Y-m-d H:i:s');
$table  = 'project';
$module = $_GET['module'];
$act    = $_GET['act'];
if ($act!=null) {
    $data = isset($_GET['id']) ? $_GET['id'] : isset($_POST['id']) ? $_POST['id'] : "new entry";
    mysqli_query($conn,"INSERT INTO log (action,module,data,info,created_by,created_at) values ('".ucwords($act)."','".ucwords($module)."','".ucwords($data)."','".ucwords($module." ".$act." ".$data)."','$user','$now')");
}
if($act == 'create'){
    $sql="INSERT INTO ".$table." (nama_project,deskripsi,kategori,project_case,tracking,assignee,nominal,start_date,due_date,priority,created_by,created_at,updated_by,updated_at)
    VALUES ('".$_POST['nama_project']."', '".$_POST['deskripsi']."', '".$_POST['kategori']."', '".$_POST['project_case']."', '".$_POST['tracking']."', '".$_POST['assignee']."', '".$_POST['nominal']."', '".$_POST['start_date']."', '".$_POST['due_date']."', '".$_POST['priority']."','$user','$now','$user','$now')";
    $query = mysqli_query($conn,$sql);
    $_SESSION['flash']['class']='alert alert-success';
    $_SESSION['flash']['label']='Penambahan '.$_GET['module'].' Berhasil';
    $_SESSION['flash']['icon']='fa fa-check';
    header('Location: ../../media.php?module='.$module);
}else if($act == 'edit'){
    foreach($_POST as $key => $value) {
        $before    = mysqli_fetch_array(mysqli_query($conn,"SELECT $key FROM project where id = '".$_POST['id']."'"));
        if ($value!= $before[$key]) {
            $assignee = mysqli_fetch_array(mysqli_query($conn,"SELECT * FROM pegawai where id = '".$user."'"));
            if ($key == 'assignee') {
                $assigneea = mysqli_fetch_array(mysqli_query($conn,"SELECT * FROM pegawai where id = '".$before[$key]."'"));
                $assigneeb = mysqli_fetch_array(mysqli_query($conn,"SELECT * FROM pegawai where id = '".$_POST[$key]."'"));
                $text = 
                "<strong>".ucwords($assignee['nama_pegawai'])."</strong> changed ".ucwords($key)." from <i>".$assigneeb['nama_pegawai']."</i> to <i>".$assigneea['nama_pegawai']."</i>";
            }else{
                $text = "<strong>".ucwords($assignee['nama_pegawai'])."</strong> changed ".ucwords($key)." from <i>".$before[$key]."</i> to <i>".$_POST[$key]."</i>";
            }
            $sql="INSERT INTO project_log (project_id,field,data_before,data_after,text,created_by,created_at) values ('".$_POST['id']."','$key','".$before[$key]."','".$value."','$text','$user','$now')";
            mysqli_query($conn,$sql);
        }
    }
    $sql="UPDATE ".$table." SET 
    nama_project    = '".$_POST['nama_project']."', 
    deskripsi       = '".$_POST['deskripsi']."',
    kategori        = '".$_POST['kategori']."', 
    project_case    = '".$_POST['project_case']."', 
    tracking        = '".$_POST['tracking']."', 
    assignee        = '".$_POST['assignee']."', 
    nominal         = '".$_POST['nominal']."', 
    start_date      = '".$_POST['start_date']."', 
    due_date        = '".$_POST['due_date']."', 
    priority        = '".$_POST['priority']."',
    updated_by      = '$user',
    updated_at      = '$now'
    WHERE id = '".$_POST['id']."'";
    $query = mysqli_query($conn, $sql);
    $_SESSION['flash']['class']='alert alert-success';
    $_SESSION['flash']['label']='Pengubahan '.$_GET['module'].' Berhasil';
    $_SESSION['flash']['icon']='fa fa-edit';
    header('Location: ../../media.php?module='.$module);
}else if($act == 'delete'){
    $sql="UPDATE ".$table." SET 
    id_delete = '1'
    WHERE id = '".$_GET['id']."'";
    $query = mysqli_query($conn, $sql);
    $_SESSION['flash']['class']='alert alert-danger';
    $_SESSION['flash']['label']='Penghapusan '.$_GET['module'].' Berhasil';
    $_SESSION['flash']['icon']='fa fa-trash';
    header('Location: ../../media.php?module='.$module);
}
?>