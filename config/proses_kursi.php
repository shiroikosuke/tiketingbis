<?php

	include 'koneksi.php';

	$ids = $_POST["ids"];
	$jumlah = $_GET["p"];
	$idp = $_GET["id"];
	$idb = $_GET["bus"];
	$tgl = $_GET["tgl"];
	$sumn = count($ids);

	if ($sumn>$jumlah) {
		print"
			<script>
				alert(\"Kursi Yang Anda Pilih Melebihi Jumlah Pemesanan!\");
				history.back(-1);
			</script>";		
	}elseif ($sumn<$jumlah) {
		print"
			<script>
				alert(\"Kursi Yang Anda Pilih Kurang Dari Jumlah Pemesanan!\");
				history.back(-1);
			</script>";		
	}else{

	for ($i=0; $i < $sumn ; $i++) { 
		$insert			= "INSERT INTO kursi_pesanan (id_pesan,kode_kursi,id_bus,tgl_berangkat) VALUES ('$idp','$ids[$i]','$idb','$tgl')";

		$simpan			= mysqli_query($conn, $insert)or die(mysqli_error($conn));
		
	}

	echo "<META HTTP-EQUIV='REFRESH' CONTENT ='0; URL=../index.php?halaman=invoice&&id_pesan=$idp'>";

}
	
?>