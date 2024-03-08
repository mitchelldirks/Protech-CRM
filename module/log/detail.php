<?php 
$aksi="module/".$_GET['module']."/action.php";
$query = mysqli_query($conn, "SELECT * FROM project join log_external on project.signature=log_external.signature where log_external.id = '".$_GET['id']."' ORDER BY timestamp desc");
$last=mysqli_fetch_array($query);
$project=mysqli_fetch_array(mysqli_query($conn,"SELECT * from project where signature = '".$last['signature']."'"));
$data=json_decode($last['json']);
$params=json_decode(rawurldecode($data->json[0]));
?>
<div class="col-xl-12 col-lg-12 col-md-12 col-12 card layout-spacing">
	<div class="widget-content-area br-4">
		<table class="table table-hover" style="width:100%">
			<tr>
				<td><b>IP Address</b></td>
				<td>:</td>
				<td><?php echo $last['ip']?></td>
			</tr>
			<tr>
				<td><b>Access Time</b></td>
				<td>:</td>
				<td><?php echo $last['timestamp']?></td>
			</tr>
			<tr>
				<td><b>URL Access</b></td>
				<td>:</td>
				<td class="text-wrap"><a href="<?php echo $params->currenturl ?>" target="_blank"><?php echo $params->currenturl ?></a></td>
			</tr>
			<tr>
				<td><b>Location</b></td>
				<td>:</td>
				<td><a href="https://www.google.com/maps/@<?php echo $params->latitude.",".$params->longitude?>,16z" target="_blank"><?php echo $params->latitude.",".$params->longitude?></a> <span class="float-right"><?php echo $params->city ?>, <?php echo $params->regionName ?>, <?php echo $params->countryName ?></span></td>
			</tr>
			<tr>
				<td><b>Access Time</b></td>
				<td>:</td>
				<td><?php echo $last['timestamp']?></td>
			</tr>
			<tr>
				<td><b>Access Time</b></td>
				<td>:</td>
				<td><?php echo $last['timestamp']?></td>
			</tr>
		</table>
	</div>
</div>
