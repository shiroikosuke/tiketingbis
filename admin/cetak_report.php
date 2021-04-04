<!DOCTYPE html>

<html lang="en">

<head> 

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Bootstrap Core CSS -->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="bootstrap/css/bootstrap.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="bootstrap/css/shop-homepage.css" rel="stylesheet">

    <!-- jQuery -->
    <script src="bootstrap/js/jquery.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
</head>

<title>Cetak Tiket</title>

<body onload="window.print()">
    <div class="panel panel-default"">
        <div class="panel-body">
            <div class="row-table-bordered">
                <div class="col-md-2">
                    <img src="../images/logo1.png" class="img-responsive pull-left" style="max-height:150px;display:inline">
                </div>
                <br>
                <br>
                <br>
                <div class="col-md-4">
                    <font size="4"><b><p class="text-center">Aplikasi Pemesanan Tiket Bus</p></font>
                    <font size="3"><b><p class="text-center">Perumahan Atisiri Permai Jalan Sedap Malam 3 No.4, Citayam</p></font>
                    <b><p class="text-center">Phone : +6285286887204</p></b>
                </div>
                <style type="text/css">
                  hr.style2 {
                    border-top: 3px double #8c8b8b;
                    }
                </style>
            </div>
        </div>
        <hr class="style2">

        <?php
            
            include '../config/koneksi.php';
            
            error_reporting(0);

            $bln = $_GET['bln'];
            $thn = $_GET['thn'];

            $query1 = "SELECT * FROM pesanan p
                        JOIN keberangkatan k ON p.id_berangkat = k.id_berangkat";

            $tampil1 = mysqli_query($conn, $query1)or die(mysqli_error($conn));

            $no =1;

        ?>

<body>
<h4><center>Laporan Penjualan</h4>
<table border="1" style="" align="center">
  <tr>
      <th class="bg-info"><center>No</th>
      <th class="bg-info"><center>Tanggal Berangkat</th>
      <th class="bg-info"><center>Tujuan</th>
      <th class="bg-info"><center>Total</th>
  </tr>

  <?php

  while($row = mysqli_fetch_array($tampil1)) { ?>

    <tr>
        <td><center><?php echo $no++; ?></td>
        <td><center><?php echo $row['tgl_berangkat']; ?></td>
        <td><center><?php echo $row['tujuan']; ?></td>
        <td><center><?php echo $row['total']; ?></td>   
    </tr>

<?php }

?>

</table>

<br>
<br>




</body>
</html>