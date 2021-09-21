<?php
$aksi = "module/" . $_GET['module'] . "/action.php";
$todo = mysqli_fetch_array(mysqli_query($conn, 'SELECT * FROM todo WHERE id = ' . $_GET['id']));
$detail_todo = mysqli_query($conn, 'SELECT * FROM todo_detail WHERE todo_id = ' . $_GET['id'] . ' ORDER BY id');
?>

<div class="col-xl-12 col-lg-12 col-md-12 col-12 layout-spacing card">
  <?php
  if (isset($_SESSION['alert'])) : ?>
    <div class="<?php echo $_SESSION['alert']['class']; ?> mt-3 mb-3">
      <i class="<?php echo $_SESSION['alert']['icon'] ?>"></i> <?php echo $_SESSION['alert']['text']; ?>
      <button type="button" class="close" data-dismiss="alert" aria-label="Close"> <span aria-hidden="true">×</span> </button>
    </div>
  <?php endif;
  unset($_SESSION['alert']); ?>
  <div class="widget-content-area br-4 px-3 py-4">
    <div class="row">
      <div class="col-6">
        <h3 class="mb-3">Detail To Do</h3>
        <h6 class="text-muted"><?= $todo['title'] ?></h6>
        <p><?= $todo['description'] ?></p>
      </div>
      <div class="col-6 d-flex flex-column align-items-end">
        <a class="btn btn-primary ml-2 mb-4 mt-2" href="?module=<?php echo $_GET['module'] ?>&act=create-detail&id=<?= $_GET['id'] ?>">Tambah list <?php echo $_GET['module'] ?></a>
        <span class="mb-2">Start Date <strong><?= $todo['start_date'] ?></strong></span>
        <span class="mb-2">Due Date <strong><?= $todo['due_date'] ?></strong></span>
        <span class="mb-2">Status <strong><?= $todo['status'] == 1 ? 'Finished' : 'On Going' ?></strong></span>
      </div>
    </div>

    <div class="table-responsive my-4">
      <table class="table table-hover" style="width:100%">
        <tbody>
          <?php if ($detail_todo) : ?>
            <?php foreach ($detail_todo as $row) : ?>
              <tr>
                <td>
                  <div class="form-check">
                    <input class="form-check-input position-static" type="checkbox" onclick="return false;" <?= $row['is_checked'] == 1 ? 'checked' : '' ?>>
                  </div>
                </td>
                <td>
                  <h6><?= $row['title'] ?></h6>
                  <p><?= $row['description'] ?></p>
                </td>
                <td>
                  <span class="float-right">
                    <a class="btn btn-primary btn-xs" href="?module=<?php echo $_GET['module'] ?>&act=edit-detail&id=<?php echo $row['id']; ?>"><i data-feather="edit"></i></a>
                    <a class="btn btn-danger btn-xs" onclick="return confirm('Hapus data?')" href="<?php echo $aksi ?>?module=<?php echo $_GET['module'] ?>&act=delete-detail&id=<?php echo $row['id']; ?>&todo_id=<?= $_GET['id'] ?>"><i data-feather="trash"></i></a>
                  </span>
                </td>
              </tr>

            <?php endforeach; ?>
          <?php endif; ?>
        </tbody>
      </table>
    </div>


  </div>
</div>