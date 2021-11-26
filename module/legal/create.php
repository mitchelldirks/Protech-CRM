<?php $aksi = "module/".$_GET['module']."/action.php"; ?>
<div class="card col-md-12">
  <div class="card-header">
    <h4><strong>Legal Form Create</strong></h4>
  </div>
  <form method="POST" action="<?php echo $aksi ?>?module=<?php echo $_GET['module'] ?>&act=<?php echo $_GET['act'] ?>" enctype="multipart/form-data">
  <div class="card-body">
      <div class="row">
          <div class="col-md-6">
            <div class="mb-3">
               <label for="exampleInputEmail1" class="form-label"><strong>Flow</strong></label>
               <select name="flow" id="disabledSelect" class="form-control" required>
                 <option readonly selected disabled hidden>- Choose Type -</option>
                 <option value="Incoming Letter">Incoming Letter</option>
                 <option value="Outcoming Letter">Outcoming Letter</option>
               </select>
            </div>
          </div>
          <div class="col-md-6">
            <div class="mb-3">
              <label class="form-label"><strong>File</strong></label>
              <input type="file" name="doc" class="form-control"  required>
            </div>
          </div>
      </div>
      <div class="row">
          <div class="col-md-6">
            <div class="mb-3">
               <label for="exampleInputEmail1" class="form-label"><strong>Project</strong></label>
               <select name="project" id="disabledSelect" class="form-control" required>
                 <option readonly selected disabled hidden>-Choose Project-</option>
                 <option value="Incoming Letter">Incoming Letter</option>
                 <option value="Outcoming Letter">Outcoming Letter</option>
               </select>
            </div>
          </div>
          <div class="col-md-6">
            <div class="mb-3">
              <label class="form-label"><strong>Link doc</strong></label>
              <input type="text" name="url_doc" class="form-control" placeholder="URL doc" >
            </div>
          </div>
      </div>
      <div class="row">
          <div class="col-md-6">
            <div class="mb-3">
               <label for="exampleInputEmail1" class="form-label"><strong>Document Number</strong></label>
               <input type="text" name="doc_numb" class="form-control"  >
            </div>
          </div>
          <div class="col-md-3">
            <div class="mb-3">
              <label class="form-label"><strong>Document Issue</strong></label>
              <input type="date" value="<?php echo date('Y-m-d');?>" class="form-control" name="date" required>
            </div>
          </div>
          <div class="col-md-1 mt-4">
            <div class="mb-3 mt-3">
              <input type="checkbox" class="form-check-input" name="is_public" >
              <label class="form-label"><strong>Public</strong></label>
            </div>
          </div>
          <div class="col-md-1 mt-4">
            <div class="mb-3 mt-3">
              <input type="checkbox" class="form-check-input" name="is_sent" >
              <label class="form-label"><strong>Draft</strong></label>
            </div>
          </div>
      </div>
      <div class="row">
          <div class="col-md-6">
            <div class="mb-3">
               <label for="exampleInputEmail1" class="form-label"><strong>Doc Title</strong></label>
               <input type="text" name="doc_title" class="form-control" required >
            </div>
          </div>
          <div class="col-md-3">
            <div class="mb-3">
              <label class="form-label"><strong>Document Author</strong></label>
              <input type="text" name="author" class="form-control" value="<?php echo $_SESSION['name']; ?>" required>
            </div>
          </div>
          <div class="col-md-3">
            <div class="mb-3">
              <label class="form-label"><strong>Document Recipient</strong></label>
              <input type="text" name="recipient" class="form-control" placeholder="joe@gmail.com" required>
            </div>
          </div>
      </div>
      <div class="row">
          <div class="col-md-1">
            <div class="mb-3">
               <input type="submit" name="submit_legal" value="Submit" class="btn btn-primary"  >
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
