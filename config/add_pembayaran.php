<?php

	include 'koneksi.php';

	$bank 		= $_GET['bank'];
	$rekening 	= $_GET['rekening'];
	$nama		= $_GET['nama'];

	$insert		= "INSERT INTO pembayaran (id, bank, nmr_rekening, atas_nama) VALUES ('','$bank','$rekening','$nama')";

	$simpan		= mysqli_query($conn,$insert)or die(mysqli_error());

?>
 <META HTTP-EQUIV="REFRESH" CONTENT = "0; URL=../admin/admin.php?halaman=manajemen_pembayaran"> 