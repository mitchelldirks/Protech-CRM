<?php
include '../../config/koneksi.php';
$user   = $_SESSION['id_user'];
$table  = 'legal';
$module = $_GET['module'];
$act    = $_GET['act'];
$tz = 'Asia/Jakarta';
$dt = new DateTime("now", new DateTimeZone($tz));
$now=$dt->format('Y-m-d G:i:s');
if($act == 'create'){
  $flow=$_POST['flow'];
  $fileName=$_FILES['doc']['name'];
  $tmpName=$_FILES['doc']['tmp_name'];
  $direktori= 'documents/';
  $slug = preg_replace('/[^a-z0-9]+/i', '-', trim(strtolower($fileName)));
  $doc=$_FILES['doc']['name'];
  $extension=pathinfo($doc,PATHINFO_EXTENSION);
  $link_doc=$_POST['url_doc'];
  $docNumb=$_POST['doc_numb'];
  $docDate=$_POST['date'];
  $docTitle=$_POST['doc_title'];
  $docAuthor=$_POST['author'];
  $project=$_POST['project'];
  $docRecepient=$_POST['recipient'];
  $docBody='';
  $is_public=1;
  $is_sent=0;
  if ($_POST['is_public']==true) {
    $is_public=1;
    $is_sent=0;

  }else if($_POST['is_public']==false){
    $is_public=0;
    $is_sent=1;

  }
  $is_delete=0;
  $us_approve='';
  $approve_date='';
  $createdBy=$_SESSION['id_user'];
  $createdAt=$dt->format('Y-m-d G:i:s');
  $updateBy=NULL;
  $updateAt=$dt->format('Y-m-d G:i:s');
  move_uploaded_file($tmpName,$direktori.$fileName);
  $sql="INSERT INTO legal(id,id_project,flow,filename,slug,extension,link_doc,doc_number,doc_date,doc_title,doc_author,doc_recepient,doc_body,is_public,is_sent,is_delete,us_approve,approve_date,created_by,created_at,updated_by,updated_at)VALUES(NULL,NULL,'$flow','$fileName','$slug','$extension','$link_doc','$docNumb','$docDate','$docTitle','$docAuthor',
    '$docRecepient','$docBody','$is_public','$is_sent','$is_delete','$us_approve','$approve_date','$createdBy','$createdAt','$updateBy','$updateAt' );";

  $query=mysqli_query($conn,$sql);
  header('Location:../../media.php?module='.$module);
}elseif($act == 'edit') {
  $is_public=1;
  $is_sent=0;
  if ($_POST['is_public']==true) {
    $is_public=1;
    $is_sent=0;

  }else if($_POST['is_public']==false){
    $is_public=0;
    $is_sent=1;

  }
    $sql= "UPDATE ".$table." SET
    flow            = '".$_POST['flow']."',
    doc_number      = '".$_POST['doc_numb']."',
    doc_title       = '".$_POST['doc_title']."',
    link_doc        = '".$_POST['url_doc']."',
    doc_date        = '".$_POST['date']."',
    is_public       = '".$is_public."',
    is_sent         = '".$is_sent."',
    updated_by      = '$user',
    updated_at      = '$now'
    WHERE id = '".$_POST['id']."'";

    $query=mysqli_query($conn,$sql);
      header('Location:../../media.php?module='.$module);
}elseif($act == 'delete'){
  $sql="DELETE FROM ".$table."
  WHERE id = '".$_GET['id']."'";
  $query = mysqli_query($conn, $sql);

  header('Location: ../../media.php?module='.$module);
}

?>
