<?php $aksi = "module/".$_GET['module']."/action.php"; ?>
<?php
  $id=$_GET['id'];
  $query = mysqli_fetch_array(mysqli_query($conn,"SELECT * FROM legal WHERE id=$id"));
?>
<div class="card col-md-12">
  <div class="card-header">
    <h4><strong>Legal Form Edit</strong></h4>
  </div>
  <form method="POST" action="<?php echo $aksi ?>?module=<?php echo $_GET['module'] ?>&act=<?php echo $_GET['act'] ?>" >
  <input type="hidden" name="id" value="<?php echo $_GET['id'];?>">
  <div class="card-body">
      <div class="row">
          <div class="col-md-6">
            <div class="mb-3">
               <label for="exampleInputEmail1" class="form-label"><strong>Flow</strong></label>
               <select name="flow" id="disabledSelect" class="form-control" required>
                 <?php
                 if ($query['flow']=="Incoming Letter") {
                   echo '<option value="Incoming Letter" selected>Incoming Letter</option>';
                   echo  '<option value="Outcoming Letter"  >Outcoming Letter</option>';
                 }else{
                   echo '<option value="Incoming Letter" >Incoming Letter</option>';
                   echo  '<option value="Outcoming Letter" selected >Outcoming Letter</option>';
                 }
                 ?>
               </select>
            </div>
          </div>
          <div class="col-md-6">
            <div class="mb-3">
              <label class="form-label"><strong>File</strong></label>
              <input type="text" name="doc" value="<?php echo $query['filename'];?>" class="form-control" readonly  required>
            </div>
          </div>
      </div>
      <div class="row">
          <div class="col-md-6">
            <div class="mb-3">
               <label for="exampleInputEmail1" class="form-label"><strong>Project</strong></label>
               <select name="project" value="<?php echo $query['project'];?>" id="disabledSelect" class="form-control" required>
                 <?php
                 if ($query['flow']=="Incoming Letter") {
                   echo '<option value="Incoming Letter" selected>Incoming Letter</option>';
                   echo  '<option value="Outcoming Letter"  >Outcoming Letter</option>';
                 }else{
                   echo '<option value="Incoming Letter" >Incoming Letter</option>';
                   echo  '<option value="Outcoming Letter" selected >Outcoming Letter</option>';
                 }
                 ?>
               </select>
            </div>
          </div>
          <div class="col-md-6">
            <div class="mb-3">
              <label class="form-label"><strong>Link doc</strong></label>
              <input type="text" name="url_doc" value="<?php echo $query['link_doc'];?>" class="form-control" placeholder="URL doc" >
            </div>
          </div>
      </div>
      <div class="row">
          <div class="col-md-6">
            <div class="mb-3">
               <label for="exampleInputEmail1" class="form-label"><strong>Document Number</strong></label>
               <input type="text" name="doc_numb" value="<?php echo $query['doc_number'];?>" class="form-control"  >
            </div>
          </div>
          <div class="col-md-3">
            <div class="mb-3">
              <label class="form-label"><strong>Document Issue</strong></label>
              <input type="date" value="<?php echo $query['doc_date'];?>" class="form-control" name="date" required>
            </div>
          </div>
          <div class="col-md-1 mt-4">
            <?php
            if ($query['is_public']==1) {
              echo '<div class="mb-3 mt-3">
                <input type="checkbox" class="form-check-input" name="is_public" checked>
                <label class="form-label"><strong>Public</strong></label>
              </div>
            </div>
            <div class="col-md-1 mt-4">
              <div class="mb-3 mt-3">
                <input type="checkbox" class="form-check-input" name="is_sent" >
                <label class="form-label"><strong>Draft</strong></label>
              </div>
            </div>';
          }elseif ($query['is_sent']==1) {
            echo '<div class="mb-3 mt-3">
              <input type="checkbox" class="form-check-input" name="is_public" >
              <label class="form-label"><strong>Public</strong></label>
            </div>
          </div>
          <div class="col-md-1 mt-4">
            <div class="mb-3 mt-3">
              <input type="checkbox" class="form-check-input" name="is_sent" checked>
              <label class="form-label"><strong>Draft</strong></label>
            </div>
          </div>';
          }
            ?>

      </div>
      <div class="row">
          <div class="col-md-6">
            <div class="mb-3">
               <label for="exampleInputEmail1" class="form-label"><strong>Doc Title</strong></label>
               <input type="text" name="doc_title" value="<?php echo $query['doc_title'];?>" class="form-control" required >
            </div>
          </div>
          <div class="col-md-3">
            <div class="mb-3">
              <label class="form-label"><strong>Document Author</strong></label>
              <input type="text" name="author" class="form-control" value="<?php echo $query['doc_author'];?>" readonly required>
            </div>
          </div>
          <div class="col-md-3">
            <div class="mb-3">
              <label class="form-label"><strong>Document Recipient</strong></label>
              <input type="text" name="recipient" value="<?php echo $query['doc_recepient'];?>" class="form-control" placeholder="joe@gmail.com" required>
            </div>
          </div>
      </div>
      <div class="row">
          <div class="col-md-1">
            <div class="mb-3">
               <button type="submit" class="btn btn-lg btn-primary">Simpan</button>
            </div>
          </div>
          <div class="col-md-1 ml-2">
            <div class="mb-3 ml-2">
               <input type="button" onClick="window.history.back()" name="cancel" value="Cancel" class="btn btn-light border"  >
            </div>
          </div>
      </div>

  </div>
  </form>
</div>
