<?php

	include '../config/koneksi.php';

	$id    = $_GET['id'];

	$edit  = "SELECT * FROM pembayaran";

	$hasil = mysqli_query($conn, $edit)or die(mysqli_error());
	$data  = mysqli_fetch_array($hasil);

?>
<div class="col-md-10">
    <h3>
        <div align="center">Edit Info Pembayaran</div>
    </h3>
    <br><br><br>
    <form class="form-horizontal" action="../config/info_pembayaran.php" method="POST">
        <input type="hidden" name="id" value="<?php echo $id ?>">
        <div class="form-group">
            <label class="control-label col-sm-4" for="bank">Bank :</label>
            <div class="col-sm-6">
                <input type="bank" class="form-control" name="bank" value="<?php echo $data['bank']; ?>">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-4" for="jadwal">No. Rekening :</label>
            <div class="col-sm-6">
                <input type="rekening" class="form-control" name="rekening" value="<?php echo $data['nmr_rekening']; ?>">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-4"></label>
            <div class="col-sm-6" align="right">
                <button class="btn btn-danger">Update</button>
            </div>
        </div>
    </form>
</div>
echo '<META HTTP-EQUIV="REFRESH" CONTENT = "1; URL=index.php?halaman=info_pembayaran">';