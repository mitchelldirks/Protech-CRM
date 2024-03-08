<?php $aksi="module/".$_GET['module']."/action.php"; ?>
<div class="col-md-12">

  <div class="card">
      <div class="card-header">
          <strong>Legal Data (Outcoming)</strong>
      </div>
        <div class="card-body">
          <div class="col-md-3 mb-4">
            <a  href="?module=legal&act=create" class="btn btn-primary">Create Letters</a></li>
          </div>
          <table class="table">
              <thead class="thead-dark">
                <tr>
                  <th scope="col">No</th>
                  <th scope="col">Title</th>
                  <th scope="col">File Name</th>
                  <th scope="col">Flow</th>
                  <th scope="col">Author</th>
                  <th scope="col"></th>
                  <th scope="col"></th>
                </tr>
              </thead>
              <tbody>
                <?php
                $direktori='documents/';
                $query=mysqli_query($conn,"Select * From legal WHERE flow='Outcoming Letter' ORDER BY id");
                foreach ($query as $key ) {

                ?>
                <tr>
                  <th scope="row">1</th>
                  <td><?php echo $key['doc_title'];?></td>
                  <td><?php echo $key['filename'];?></td>
                  <td><?php echo $key['flow'];?></td>
                  <td><?php echo $key['doc_author'];?></td>
                  <td><a href="?module=<?php echo $_GET['module'] ?>&act=edit&id=<?php echo $key['id']; ?>" class="btn btn-warning">Edit</td>
                  <td><a class="btn btn-danger" onclick="return confirm('Hapus data <?php echo $key['doc_title'];?>?')" href="<?php echo $aksi ?>?module=<?php echo $_GET['module'] ?>&act=delete&id=<?php echo $key['id']; ?>">Delete</a></td>
                </tr>
              <?php } ?>
              </tbody>
        </table>
        </div>
  </div>

</div>
