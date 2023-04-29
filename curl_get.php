<?php 

$json = file_get_contents('php://input');
$fetch = json_decode($json);
$key = $_GET['key'];
$url = "http://dtech.web.id/crm/module/log/action.php?module=log&act=apilog&key=".$key;

$data = array(
	'signature' =>	$key,
	'json'		=>	$json,
	'url'		=>	$fetch->url,
	'info'		=>	$fetch->info,
	'ip'		=>	$fetch->ip,
	'geoloc'	=>	$fetch->geoloc,
	'timestamp'	=>	$fetch->timestamp,
);

$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, $url);
curl_setopt($ch, CURLOPT_POST, 1);
curl_setopt($ch, CURLOPT_HTTPHEADER, array('Content-Type: application/x-www-form-urlencoded'));
curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($data));
curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
$output = curl_exec($ch);
echo json_encode($output);
?>