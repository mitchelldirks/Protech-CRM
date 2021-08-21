<?php 
include '../../config/variable.php';
include '../../config/koneksi.php';
$data = array();
foreach ($tracking as $key => $value):
	unset($item);
	$query=mysqli_query($conn,"SELECT * from project where tracking = ".$key);
	foreach ($query as $row): 
		if ($priority[$row['priority']] == count($priority)) {
			$badgeColor = 'danger';
		}elseif($priority[$row['priority']] == 0){
			$badgeColor = 'dark';
		}else{
			$badgeColor = 'primary';
		}
		$item[] = '
		<a class="kanban-box" href="media.php?module='.$_GET['module'].'&act=detail&id='.$row['id'].'"><span class="date">23/7/20</span><span class="badge badge-'.$badgeColor.' f-right">'.$priority[$row['priority']].'</span>
		<h6>Design Dashboard</h6>
		<div class="media-body">
		<p class="text-'.$badgeColor.'">'.$row['nama_project'].'</p>
		</div>
		</div>
		</div></a>
		';
	endforeach;
	$data[] = array(
		'id' => '_'.strtolower($value),
		'title' => strtoupper($value),
		'item' => $item
	);
endforeach;
echo json_encode($data);
?>