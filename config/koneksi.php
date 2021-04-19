<?php 
date_default_timezone_set("Asia/Jakarta");
$conn = new mysqli("localhost","root","","crm");
// error_reporting(0);
session_start();
$project_case = array(1=>'Build','Bug','Feature','Doc & Adm');
$tracking     = array(1=>'back log','analisa desain sistem','pengerjaan','testing','deploy','finish');
$priority     = array(1=>'low','normal','high','urgent');
function dateIndonesian($date){
	$array_hari = array(1=>'Senin','Selasa','Rabu','Kamis','Jumat', 'Sabtu','Minggu');
	$array_bulan = array(1=>'Januari','Februari','Maret', 'April', 'Mei', 'Juni','Juli','Agustus','September','Oktober', 'November','Desember');
	$date  = strtotime($date);
	$hari  = $array_hari[date('N',$date)];
	$tanggal = date ('j', $date);
	$bulan = $array_bulan[date('n',$date)];
	$tahun = date('Y',$date);
	$formatTanggal = $hari.", ".$tanggal." ".$bulan." ".$tahun;
	return $formatTanggal;
}
function bulan($bln)
{
	if ($bln==1) {$string = "Januari";}
	elseif ($bln==2) {$string = "Februari";}
	elseif ($bln==3) {$string = "Maret";}
	elseif ($bln==4) {$string = "April";}
	elseif ($bln==5) {$string = "Mei";}
	elseif ($bln==6) {$string = "Juni";}
	elseif ($bln==7) {$string = "Juli";}
	elseif ($bln==8) {$string = "Agustus";}
	elseif ($bln==9) {$string = "September";}
	elseif ($bln==10) {$string = "Oktober";}
	elseif ($bln==11) {$string = "November";}
	elseif ($bln==12) {$string = "Desember";}
	return $string;
}
function usernameInitial($text)
{
	$string = strtolower(trim(preg_replace('/[^A-Za-z0-9-]+/', '.', $text)));
	return $string;
}
function timeElapsed($time_ago) {
	$time_ago = strtotime($time_ago);
	$cur_time   = time();
	$time_elapsed   = $cur_time - $time_ago;
	$seconds    = $time_elapsed ;
	$minutes    = round($time_elapsed / 60 );
	$hours      = round($time_elapsed / 3600);
	$days       = round($time_elapsed / 86400 );
	$weeks      = round($time_elapsed / 604800);
	$months     = round($time_elapsed / 2600640 );
	$years      = round($time_elapsed / 31207680 );
	if($seconds <= 60){
		return "sesaat lalu";
	}
	else if($minutes <=60){
		if($minutes==1){
			return "satu menit lalu";
		}
		else{
			return "$minutes menit lalu";
		}
	}
	else if($hours <=24){
		if($hours==1){
			return "satu jam lalu";
		}else{
			return "$hours jam lalu";
		}
	}
	else if($days <= 7){
		if($days==1){
			return "kemarin";
		}else{
			return "$days hari lalu";
		}
	}
	else if($weeks <= 4.3){
		if($weeks==1){
			return "seminggu lalu";
		}else{
			return "$weeks minggu lalu";
		}
	}
	else if($months <=12){
		if($months==1){
			return "sebulan lalu";
		}else{
			return "$months bulan lalu";
		}
	}
	else{
		if($years==1){
			return "setahun lalu";
		}else{
			return "$years tahun lalu";
		}
	}
}
?>