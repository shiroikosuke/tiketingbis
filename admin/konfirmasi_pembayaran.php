<style>
	table {
    border-collapse: collapse;
    width: 100%;
}

th, td {
    text-align: left;
    padding: 8px;
}

tr:nth-child(even){background-color: white}

th {
    background-color: #4b6287;
    color: white;
}

</style>
<?php

	include '../config/koneksi.php';

	$id_pesan	= $_GET['id_pesan'];

	$edit   = "SELECT pesanan.id_pesan, pesanan.nama, pesanan.id_bus, pesanan.id_berangkat, pesanan.tgl_pesan, pesanan.nik, pesanan.tgl_berangkat, pesanan.qty, pesanan.total, pesanan.invoice, pesanan.respons, keberangkatan.tujuan, keberangkatan.jadwal, bus.kelas, bus.harga FROM pesanan, bus, keberangkatan, kursi_pesanan WHERE pesanan.id_pesan = '$id_pesan' AND kursi_pesanan.id_pesan = pesanan.id_pesan AND keberangkatan.id_berangkat = pesanan.id_berangkat AND bus.id_bus = pesanan.id_bus";
	$hasil  = mysqli_query($conn, $edit)or die(mysqli_error($conn));
	$data   = mysqli_fetch_array($hasil);

?>

<div class="row">
	<div class="col-md-12">
		<center><h2>Detail Pembayaran</h2></center>
		<div class="col-md-10">
			<br>
			<br>
			<h5><b>Kode Pemesanan&nbsp;&nbsp;: <?php echo $data['invoice']; ?></b></h5>
			<h5><b>Nama Pemesan&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: <?php echo $data['nama']; ?></b></h5>
			<br><br>
			<form action="../config/update_pembayaran.php" method="POST">
			<input type="hidden" name="id_pesan" value="<?php echo $data['id_pesan']; ?>">
				<table class="table table-striped-bordered">
					<tr>
						<td width="200">Tanggal Pesan</td>
						<td width="50">:</td>
						<td><?php echo $data['tgl_pesan']; ?></td>
					</tr>
					<tr>
						<td width="200">NIK Pemesan</td>
						<td width="50">:</td>
						<td><?php echo $data['nik']; ?></td>
					</tr>
					<tr>
						<td width="200">Tanggal Berangkat</td>
						<td width="50">:</td>
						<td><?php echo $data['tgl_berangkat']; ?></td>
					</tr>
					<tr>
						<td width="200">Jam Berangkat</td>
						<td width="50">:</td>
						<td><?php echo $data['jadwal']; ?></td>
					</tr>
					<tr>
						<td width="200">Tujuan</td>
						<td width="50">:</td>
						<td><?php echo $data['tujuan']; ?></td>
					</tr>
					<tr>
						<td width="200">Kelas</td>
						<td width="50">:</td>
						<td><?php echo $data['kelas']; ?></td>
					</tr>
					<tr>
						<td width="200">Harga</td>
						<td width="50">:</td>
						<td><?php echo $data['harga']; ?></td>
					</tr>
					<tr>
						<td width="200">Jumlah Penumpang</td>
						<td width="50">:</td>
						<td><?php echo $data['qty']; ?></td>
					</tr>
					<tr>
						<td width="200">Total Harga</td>
						<td width="50">:</td>
						<td><?php echo $data['harga']; ?></td>
					</tr>
					<tr>
						<td width="200">Bukti</td>
						<td width="50">:</td>
						<td><img src="../<?php echo $data['respons']; ?>" width="300px" height="250px"></td>
					</tr>
					<tr>
						<td width="200"></td>
						<td><a href="admin.php?halaman=bukti_bayar" class="btn btn-warning">Batal</a></td>
						<td><button type="submit" class="btn btn-danger">Konfirmasi</button></td>
					</tr>
				</table>
				</form>
		</div>
	</div>
</div>