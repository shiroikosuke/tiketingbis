<?php   
    
     $id_pesan = $_GET['id_pesan'];
     $penumpang = $_GET['penumpang'];
     $id_bus = $_GET['idbus'];
     $tgl_berangkat = $_GET['tgl_berangkat'];
    
     $query     = "SELECT * FROM pesanan WHERE id_pesan='$id_pesan'";
     $cek       = mysqli_query($conn, $query)or die(mysqli_error($conn));
     $data      = mysqli_fetch_array($cek);

     function getKursi($kode,$idbus,$tgl,$cn)
  {
    $querypesan       = "SELECT * FROM kursi_pesanan WHERE id_bus ='$idbus' AND kode_kursi = '$kode' AND tgl_berangkat= '$tgl' ";
    $cekquery       = mysqli_query($cn, $querypesan)or die(mysqli_error($cn));
    $data           = mysqli_fetch_array($cekquery);

    return $data; 
  }


?>     
    <div class="row">
      <div>
        <h3>
          <center>
             Silahkan Pilih Kursi
          </center>
        </h3>
          <br><br>
      </div>
    </div>
    <div class="row">
      <div class="col-md-4">

      </div>
      <!-- table daftar kursi bus "config/proses_kursi.php?id_pesan=" -->
      <div class="col-md-6">
      <form class="form-horizontal" action=<?= "config/proses_kursi.php?p=".$penumpang."&&id=".$id_pesan."&&bus=".$id_bus."&&tgl=".$tgl_berangkat ?> method="POST">
           <table border = "2px" style="text-align:center">
         <tr>
            <th colspan="5" >Front Bus</th>
         </tr>
         <?php for ($i=1; $i < 15 ; $i++) { ?>
          <?php if ($i == 1) { ?>
            <tr>
              <td><?= $i."A" ?>&nbsp;
                <?php $mdata = getKursi($i."A",$id_bus,$tgl_berangkat,$conn); 
                if ($mdata == null) { ?>
                  <input type="checkbox" name="ids[]" value=<?= $i."A" ?> />
                <?php } ?>
              </td>
              <td><?= $i."B" ?>&nbsp;
                <?php $mdata = getKursi($i."B",$id_bus,$tgl_berangkat,$conn); 
                  if ($mdata == null) { ?>
                    <input type="checkbox" name="ids[]" value=<?= $i."B" ?> />
                  <?php } ?>
              </td>
              <td></td>
              <td colspan="2">Supir</td>
            </tr>  
          <?php } else if ($i < 14) { ?>
              <tr>
              <td><?= $i."A" ?>&nbsp;
                <?php $mdata = getKursi($i."A",$id_bus,$tgl_berangkat,$conn); 
                  if ($mdata == null) { ?>
                    <input type="checkbox" name="ids[]" value=<?= $i."A" ?> />
                  <?php } ?>
              </td>
              <td><?= $i."B" ?>&nbsp;
                <?php $mdata = getKursi($i."B",$id_bus,$tgl_berangkat,$conn); 
                  if ($mdata == null) { ?>
                    <input type="checkbox" name="ids[]" value=<?= $i."B" ?> />
                  <?php } ?>
              </td>
              <td></td>
              <td><?= $i."C" ?>&nbsp;
                  <?php $mdata = getKursi($i."C",$id_bus,$tgl_berangkat,$conn); 
                    if ($mdata == null) { ?>
                      <input type="checkbox" name="ids[]" value=<?= $i."C" ?> />
                    <?php } ?>
              </td>
              <td><?= $i."D" ?>&nbsp;
                <?php $mdata = getKursi($i."D",$id_bus,$tgl_berangkat,$conn); 
                  if ($mdata == null) { ?>
                    <input type="checkbox" name="ids[]" value=<?= $i."D" ?> />
                  <?php } ?>
              </td>
              </tr>    
          <?php } else { ?>
          <tr>
            <td><?= $i."A" ?>&nbsp;
                <?php $mdata = getKursi($i."A",$id_bus,$tgl_berangkat,$conn); 
                  if ($mdata == null) { ?>
                    <input type="checkbox" name="ids[]" value=<?= $i."A" ?> />
                  <?php } ?>
              </td>
              <td><?= $i."B" ?>&nbsp;
                <?php $mdata = getKursi($i."B",$id_bus,$tgl_berangkat,$conn); 
                  if ($mdata == null) { ?>
                    <input type="checkbox" name="ids[]" value=<?= $i."B" ?> />
                  <?php } ?>
              </td>
              <td><?= $i."C" ?>&nbsp;
                  <?php $mdata = getKursi($i."C",$id_bus,$tgl_berangkat,$conn); 
                    if ($mdata == null) { ?>
                      <input type="checkbox" name="ids[]" value=<?= $i."C" ?> />
                    <?php } ?>
              </td>
              <td><?= $i."D" ?>&nbsp;
                <?php $mdata = getKursi($i."D",$id_bus,$tgl_berangkat,$conn); 
                  if ($mdata == null) { ?>
                    <input type="checkbox" name="ids[]" value=<?= $i."D" ?> />
                  <?php } ?>
              </td>
              <td><?= $i."E" ?>&nbsp;
                <?php $mdata = getKursi($i."E",$id_bus,$tgl_berangkat,$conn); 
                  if ($mdata == null) { ?>
                    <input type="checkbox" name="ids[]" value=<?= $i."E" ?> />
                  <?php } ?>
              </td>
         </tr>
         <?php } ?>  
         <?php } ?>
         

      </table>
      
      <br/>
              <div class="form-group">
            <label class="control-label"></label>
            <div class="col-sm-6" align="right">
                <button type="submit" class="btn btn-danger">Save</button>
            </div>
        </div>
    </div>
    </form>

      <div class="col-md-4">
          <!-- <br><br><br><br><br><br>
           Keterangan :
           <p></p>
           <br><br> 
           <p><button class="btn btn-success"></button>&nbsp; : Kursi yang tersedia</p>
           <p></p>
           <p></p>
           <p><button class="btn btn-danger"></button>&nbsp;&nbsp; : Kursi yang terbooking</p> -->
      </div> 
    </div>

    <!-- MODAL Jumlah Penumpang --> 
    <div class="container">
      <!-- Modal -->
      <div class="modal fade" id="jumlah" role="dialog">
        <div class="modal-dialog">    
          <!-- Modal content-->
          <div class="modal-content">
            <div class="modal-header">
              <h4 class="modal-title"></h4>
              <center><b>WARNING!</b></center>
            </div>
            
            <div class="modal-body">
            <form action=<?= "index.php?halaman=invoice&&id_pesan=".$id_pesan ?> method="POST">
              <?php



                $query     = "SELECT * FROM pesanan WHERE id_pesan='$id_pesan'";
                $cek       = mysqli_query($conn, $query)or die(mysqli_error($conn));
                $data      = mysqli_fetch_array($cek)or die(mysqli_error());
              
              ?>
              <center> 
                Anda sudah memilih Jumlah kursi sesuai dengan Jumlah Penumpang yang anda pesan!
                <br>
                <br>
                <br>
                <br>
                <h5><b>Informasi Pemesan Anda :</b></h5> 
              </center>
                <br>
                <input type="hidden" name="id_pesan" value="<?php echo $data['id_pesan']; ?>">
                <b>Nama Pemesan</b> : <?php echo $data['nama'];?> 
                <br>
                <b>NIK Pemesan</b> : <?php echo $data['nik'];?>
                <!-- <?php
                  /*s*/
                ?> -->
                <br>
                <br>
                <br>
                <center><button type="submit" class="btn btn-danger">Lihat Detail Pesanan</button></center>
            </form>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- //MODAL Jumlah Penumpang -->


    <!-- MODAL GAGAL MEMILIH KURSI --> 
    <div class="container">
      <!-- Modal -->
      <div class="modal fade" id="gagal" role="dialog">
        <div class="modal-dialog">
        
          <!-- Modal content-->
          <div class="modal-content">
            <div class="modal-header">
              <h4 class="modal-title"></h4>
              <center><b>WARNING!</b></center>
            </div>
            <div class="modal-body">
              <center>  
                Anda gagal memilih kursi
              </center>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- MODAL GAGAL MEMILIH KURSI -->
 

     <input type="hidden" name="id_pesan" value="<?php echo $id_pesan ?>" id="id_pesan">
     <script type="text/javascript">
          var pesan = function (kode_kursi){
               var id_pesan = document.getElementById('id_pesan').value;
               console.log('pesan => ', kode_kursi);
               console.log('id_pesan => ', id_pesan);
               var formData = {kode_kursi: kode_kursi, id_pesan: id_pesan};
               $.ajax({
                   url : "pesan_kursi.php",
                   type: "POST",
                   data : formData,
                   success: function(data, textStatus, jqXHR)
                   {
                      
                       if (data == 'full') {
                         console.log("PENUH");
                        $("#jumlah").modal("show");
                       } 
                       else if (data == 'gagal') {
                         console.log("GAGAL");
                         $("#gagal").modal("show");
                       } 
                       else {
                        console.log("BERHASIL");
                        window.location.reload(); 
                       }
                   },
                   error: function (jqXHR, textStatus, errorThrown)
                   {
                
                   }
               }); 
          }
       </script>

