<?php 
function UploadProfile($fupload_name){
	$vdir_upload = "../../images/profile/";
	$vfile_upload = $vdir_upload . $fupload_name;
	move_uploaded_file($_FILES["images"]["tmp_name"], $vfile_upload);
}
function UploadDirectory($fupload_name,$directory){
	$vdir_upload = "../../assets/images/".$directory."/";
	$vfile_upload = $vdir_upload . $fupload_name;
	move_uploaded_file($_FILES["images"]["tmp_name"], $vfile_upload);
}
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

function penyebut($nilai) {
		$nilai = abs($nilai);
		$huruf = array("", "satu", "dua", "tiga", "empat", "lima", "enam", "tujuh", "delapan", "sembilan", "sepuluh", "sebelas");
		$temp = "";
		if ($nilai < 12) {
			$temp = " ". $huruf[$nilai];
		} else if ($nilai <20) {
			$temp = penyebut($nilai - 10). " belas";
		} else if ($nilai < 100) {
			$temp = penyebut($nilai/10)." puluh". penyebut($nilai % 10);
		} else if ($nilai < 200) {
			$temp = " seratus" . penyebut($nilai - 100);
		} else if ($nilai < 1000) {
			$temp = penyebut($nilai/100) . " ratus" . penyebut($nilai % 100);
		} else if ($nilai < 2000) {
			$temp = " seribu" . penyebut($nilai - 1000);
		} else if ($nilai < 1000000) {
			$temp = penyebut($nilai/1000) . " ribu" . penyebut($nilai % 1000);
		} else if ($nilai < 1000000000) {
			$temp = penyebut($nilai/1000000) . " juta" . penyebut($nilai % 1000000);
		} else if ($nilai < 1000000000000) {
			$temp = penyebut($nilai/1000000000) . " milyar" . penyebut(fmod($nilai,1000000000));
		} else if ($nilai < 1000000000000000) {
			$temp = penyebut($nilai/1000000000000) . " trilyun" . penyebut(fmod($nilai,1000000000000));
		}     
		return $temp;
	}

	function nominal_indo($nilai) {
		if($nilai<0) {
			$hasil = "minus ". trim(penyebut($nilai));
		} else {
			$hasil = trim(penyebut($nilai));
		}     		
		return $hasil;
	}

?>