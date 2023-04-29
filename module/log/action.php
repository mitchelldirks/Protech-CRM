<?php 
include '../../config/koneksi.php';
$now    = date('Y-m-d H:i:s');
$module = $_GET['module'];
$act    = $_GET['act'];

if ($act=='apilog') {
    $json = file_get_contents('php://input');
    $data = json_decode($json);
    $set = array();
    foreach ($data as $key => $value) {
        $set[] = " ".$key." = '".$value."' ";
    }
    $set = implode(' , ',$set);
    $sql="INSERT INTO log_external set ".$set;

    error_log($sql);
    $query = mysqli_query($conn, $sql);
}
?>