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
  <style type="text/css">
  .fc-none{
    border: none;
    background: none;
  }
  .fc-title{
    color: black;
    font-weight: bold;
  }
  .fc-desc{
    color: black;
    font-weight: lighter;
  }
</style>
<div class="widget-content-area br-4 px-3 py-4">
  <div class="row">
    <div class="col-12">
    </div>
    <div class="col-6">
      <h3 class="mb-3"><?= $todo['title'] ?></h3>
      <p><?= $todo['description'] ?></p>
      <div class="d-flex flex-column">

        <span class="mb-2">Start Date <strong><?= $todo['start_date'] ?></strong></span>
        <span class="mb-2">Due Date <strong><?= $todo['due_date'] ?></strong></span>
        <span class="mb-2">Status <strong><?= $todo['status'] == 1 ? 'Finished' : 'On Going' ?></strong></span>
      </div>
    </div>
    <div class="col-6">
      <span class="float-right mb-5">
        <a class="btn btn-primary btn-xs" href="?module=<?php echo $_GET['module'] ?>&act=edit&id=<?php echo $_GET['id']; ?>"><i data-feather="edit"></i></a>
        <a class="btn btn-danger btn-xs" onclick="return confirm('Hapus data?')" href="<?php echo $aksi ?>?module=<?php echo $_GET['module'] ?>&act=delete&id=<?php echo $_GET['id']; ?>"><i data-feather="trash"></i></a>
      </span>
    </div>
  </div>
  <?php //print_r(json_decode(rawurldecode($todo['data']))) ?>
  <div class="table-responsive my-4">
    <form method="POST" action="<?php echo $aksi ?>?module=<?php echo $_GET['module'] ?>&act=update_list&id=<?php echo $_GET['id'] ?>">

      <table class="table table-hover" style="width:100%">
        <tbody id="addmore">
          <?php 
          $data = json_decode(rawurldecode($todo['data']));
          for ($i=0; $i < count($data); $i++) {  ?>
            <tr id="list_<?=$i?>">
              <td>
                <div class="form-check">
                  <input class="form-check-input position-static" type="checkbox" name="list_is_checked[<?=$i?>]" <?= $data[$i]->is_checked == 1 ? 'checked' : '' ?>>
                </div>
              </td>
              <td class="text-left">
                <input type="text" name="list_title[<?=$i?>]" class="form-control fc-none fc-title" placeholder="Todo Title" value="<?= $data[$i]->title ?>">
                <textarea name="list_description[<?=$i?>]" oninput='this.style.height = "";this.style.height = this.scrollHeight + "px"' class="form-control fc-none fc-desc" placeholder="Todo Description"><?= $data[$i]->description ?></textarea>
              </td>
              <td>
                <span class="float-right">
                  <a class="btn btn-danger btn-xs" onclick="list_drop(<?= $i ?>)"><i data-feather="trash" style="color:white"></i></a>
                </span>
              </td>
            </tr>
          <?php } ?>

        </tbody>
        <tfoot>
          
          <tr>
            <td></td>
            <td colspan="2">
              <span class="pull-right text-primary"><a id="addmore-btn"><i class="fa fa-plus"></i> Add More List</a></span>
            </td>
          </tr>
        </tfoot>
      </table>
      <button type="submit" class="btn btn-success" onclick="return confirm('Update To Do list?')">Update Todo</button>
    </form>
  </div>
</div>
</div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script type="text/javascript">
  function list_drop(list) {
    $( "#list_"+list).remove();
  }
  $( "#addmore-btn" ).click(function() {
    var append =  '<tr><td></td><td ><div class="form-group">'
    +'<input type="text" name="list_title[]" class="form-control" placeholder="Todo Title">'
    +'<textarea name="list_description[]" class="form-control" placeholder="Todo Description"></textarea>'
    +'</div>'
    $( "#addmore" ).append(append);
  });
</script>