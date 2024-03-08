<?php 
$detail       = mysqli_fetch_array(mysqli_query($conn,"SELECT * FROM project where id = '".$_GET['id']."'"));
$assignee     = mysqli_fetch_array(mysqli_query($conn,"SELECT * FROM pegawai where id = '".$detail['assignee']."'"));
$kategori     = mysqli_fetch_array(mysqli_query($conn,"SELECT nama_kategori FROM kategori where id = '".$detail['kategori']."'"));
$initial      = mysqli_fetch_array(mysqli_query($conn,"SELECT * FROM pegawai where id = '".$detail['created_by']."'"));
?>
<div class="col-sm-12" id="invoice">
  <div class="card shadow">
    <div class="card-body">
      <div class="invoice">
        <div>
          <div>
            <div class="row">
              <div class="col-sm-6">
                <div class="media">
                  <div class="media-body m-l-20 text-left">
                    <h4 class="media-heading"><img class="media-object img-100" src="assets/images/logo/protech.png" alt=""></h4>
                    <p>sales@protech.web.id<br><span><small>+62 896-5349-6918</small></span></p>
                  </div>
                </div>
              </div>
              <div class="col-sm-6">
                <div class="text-md-right text-xs-center">
                  <h3>Invoice #<span class="counter"><?php echo $_GET['id'] ?></span></h3>
                  <p>
                    Issued 
                    <?php echo dateIndonesian(date('Y-m-d')) ?> 
                    <!-- Start
                    <?php echo dateIndonesian(date('Y-m-d')) ?> 
                    <br>
                    Due 
                    <?php echo dateIndonesian($detail['due_date']); ?>  -->
                  </p>
                </div>
              </div>
            </div>
          </div>
          <hr>
          <div class="row">
            <div class="col-md-12">
              <div class="media">
                <div class="media-left">
                  <!-- <img class="media-object rounded-circle img-60" src="../assets/images/user/1.jpg" alt=""> -->
                </div>
                <div class="media-body m-l-20">
                  <h4 class="media-heading"><?php echo $detail['nama_project'] ?></h4>
                  <?php echo $detail['deskripsi'] ?>
                </div>
              </div>
            </div>
          </div>
          <div class="p-3">
            <div class="table-responsive invoice-table" id="table">
              <table class="table table-bordered table-striped">
                <tbody>
                  <tr>
                    <?php if ($_SESSION['level']=='administrator'): ?>
                    <td class="item">
                      <h6 class="p-2 mb-0">Tanggal</h6>
                    </td>
                    <td class="Hours">
                      <h6 class="p-2 mb-0">Method</h6>
                    </td>
                    <?php endif ?>
                    <td class="Hours">
                      <h6 class="p-2 mb-0">Keterangan</h6>
                    </td>
                    <td class="Rate">
                      <h6 class="p-2 mb-0">Nominal</h6>
                    </td>
                  </tr>
                  <?php 
                  $total = 0;
          $query=mysqli_query($conn,"SELECT * from pettycash where id_project = '$_GET[id]' and is_delete = '0' order by payment_date");

                  ?>
                  <?php foreach ($query as $payment): $total+=$payment['amount']; ?>
                    <tr>
                    <?php if ($_SESSION['level']=='administrator'): ?>

                      <td>
                        <p class="itemtext"><?php echo dateIndonesian($payment['payment_date']) ?></p>
                      </td>
                      <td>
                        <p class="itemtext"><?php echo ($payment['payment_type']) ?></p>
                      </td>
                    <?php endif ?>

                      <td>
                        <p><b><?php echo ($payment['subject']) ?></b>
                          <br><?php echo $payment['description'] ?></p>
                      </td>
                      <td>
                        <span class="float-left">Rp. &nbsp;</span>
                        <p class="itemtext"><?php echo number_format($payment['amount']) ?></p>
                      </td>
                    </tr>
                  <?php endforeach ?>
                  <tr>
                    <?php if ($_SESSION['level']=='administrator'): ?>
                      <td colspan="2"></td>
                    <?php endif ?>
                    <td class="Rate">
                      <h6 class="mb-0 p-2">Total</h6>
                    </td>
                    <td class="payment">
                      <span class="float-left mb-0 pt-2">Rp. &nbsp;</span>
                      <h6 class="mb-0 p-2"><?php echo number_format($total) ?></h6>
                    </td>
                  </tr>
                  <tr>
                    <?php if ($_SESSION['level']=='administrator'): ?>
                      <td colspan="2"></td>
                    <?php endif ?>
                    <td class="Rate">
                    </td>
                    <td class="Rate">
                      <h6 class="mb-0 p-2"><i><?php echo ucwords(nominal_indo($total))." rupiah" ?></i></h6>
                    </td>
                  </tr>
                </tbody>
              </table>
            </div>
            <div class="row">
              <div class="col-md-12">
                <p>Untuk pembayaran / pelunasan selanjutnya bisa melakukan pembayaran secara online kepada</p>
                <p>BCA <b>0650701640</b> a/n Denis Ahmad</p>
                <br>
                <p>Terima kasih,</p>
                <br>
                <br>
                <p>Management Protech Infomedia</p>
              </div>
            </div>
          </div>
          <!-- End InvoiceBot-->
        </div>
        <div class="col-sm-12 text-center mt-3">
          <button class="btn btn btn-primary me-2 d-print-none" type="button" onclick="printDiv('invoice')">Print</button>
          <button class="btn btn-link text-muted d-print-none" id="cancel">Cancel</button>
        </div>
      </div>
    </div>
  </div>
</div>
<script type="text/javascript">
  document.getElementById("cancel").addEventListener("click", back);
  function back() {
    history.back()
  }
  function printDiv(divName) {
   var printContents = document.getElementById(divName).innerHTML;
   var originalContents = document.body.innerHTML;
   document.body.innerHTML = printContents;
   window.print();
   document.body.innerHTML = originalContents;
 }
</script>