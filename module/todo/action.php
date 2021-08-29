<?php
// koneksi db
include '../../config/koneksi.php';
$current_user_id  = $_SESSION['id_user'];
$module           = $_GET['module'];
$action           = $_GET['act'];
$table_name       = 'todo';
$child_table_name = 'todo_detail';
$now              = date('Y-m-d H:i:s');
if ($act!=null) {
  $data = isset($_GET['id']) ? $_GET['id'] : isset($_POST['id']) ? $_POST['id'] : "new entry";
  mysqli_query($conn,"INSERT INTO log (action,module,data,info,created_by,created_at) values ('".ucwords($act)."','".ucwords($module)."','".ucwords($data)."','".ucwords($module." ".$act." ".$data)."','$user','$now')"); 
}
/**
 * Execute query function
 * @param \mysqli_result|bool $res
 * @param string $action
 * @return bool
 */
function execute_query($res, $action)
{
  // Jika query gagal di execute
  // Maka akan muncul alert gagal
  $action_in_text = strpos($action, 'create') !== false ? 'menambahkan' : strpos($action, 'edit') !== false ? 'mengubah' : 'menghapus';
  if (!$res) {
    $_SESSION['alert']['class']   = 'alert alert-danger';
    $_SESSION['alert']['text']    = 'Gagal ' . $action_in_text . ' todo list';
    $_SESSION['alert']['icon']    = 'fa fa-alert-circle';

    return false;
  }

  // Jika berhasil, maka akan lanjut
  $_SESSION['alert']['class']   = 'alert alert-success';
  $_SESSION['alert']['text']    = 'Berhasil ' . $action_in_text . '  todo list';

  return true;
}


/**
 * Checking is_checked detail todo
 * @param int $todo_id
 * @param \mysqli $conn
 */
function check_detail_todos($todo_id, $conn)
{
  $table_name       = 'todo';
  $child_table_name = 'todo_detail';

  $query = 'SELECT is_checked FROM ' . $child_table_name . ' WHERE todo_id =' . $todo_id;
  $res = mysqli_query($conn, $query);

  if (!$res) return;

  $status_todo = '0';
  foreach ($res as $todo_detail) {
    $is_checked = $todo_detail['is_checked'];
    if (!$is_checked) {
      $status_todo = '0';
      break;
    }

    $status_todo = '1';
  }

  $res = mysqli_query($conn, 'UPDATE ' . $table_name . ' SET status = ' . $status_todo);
}

if (!isset($action)) {
  // lempar
  header('Location:  ../../media.php?module=' . $module);
}

/**
 * Action create todo list
 */
if ($action === 'create') {
  $query = '
<<<<<<< HEAD
      INSERT INTO ' . $table_name . ' 
      (
        title,
        description,
        start_date,
        due_date,
        assignee,
        status,
        create_by,
        create_at,
        updated_by,
        updated_at
      ) VALUES (
      "' .
    $_POST['title'] . '","' .
    $_POST['description'] . '","' .
    $_POST['start_date'] . '","' .
    $_POST['due_date'] . '","' .
    $_POST['assignee'] . '","' .
    $_POST['status'] . '","' .
    $current_user_id . '","' .
    $now . '","' .
    $current_user_id . '","' .
    $now .
    '")';
=======
  INSERT INTO '. $table_name .' 
  (
  title,
  description,
  start_date,
  due_date,
  assignee,
  status,
  create_by,
  create_at,
  updated_by,
  updated_at
  ) VALUES (
  "' .
  $_POST['title'] . '","' .
  $_POST['description'] . '","' .
  $_POST['start_date'] . '","' .
  $_POST['due_date'] . '","' .
  $_POST['assignee'] . '","' .
  $_POST['status'] . '","' .
  $current_user_id . '","' .
  $now . '","' .
  $current_user_id . '","' .
  $now .
  '")';
>>>>>>> 47e1131227aaffd3818c647e0e582ed722b58f35

  $res = mysqli_query($conn, $query);
  $is_success = execute_query($res, $action);

  // Jika gagal do something
  if (!$is_success) {
    header('Location:  ../../media.php?module=' . $module);
  }
  // Jika sukses do something
  $_SESSION['alert']['icon'] = 'fa fa-check';
  header('Location:  ../../media.php?module=' . $module);
}

/**
 * Action create detail todo list
 */
if ($action === 'create-detail') {
  $is_checked = isset($_POST['is_checked']) ? '1' : '0';
  $query = '
<<<<<<< HEAD
      INSERT INTO ' . $child_table_name . ' 
      (
        title,
        todo_id,
        description,
        is_checked,
        create_by,
        create_at
      ) VALUES (
      "' .
    $_POST['title'] . '","' .
    $_POST['todo_id'] . '","' .
    $_POST['description'] . '","' .
    $is_checked . '","' .
    $current_user_id . '","' .
    $now .
    '")';
=======
  INSERT INTO '. $child_table_name .' 
  (
  title,
  todo_id,
  description,
  is_checked,
  create_by,
  create_at
  ) VALUES (
  "' .
  $_POST['title'] . '","' .
  $_POST['todo_id'] . '","' .
  $_POST['description'] . '","' .
  $is_checked . '","' .
  $current_user_id . '","' .
  $now .
  '")';
>>>>>>> 47e1131227aaffd3818c647e0e582ed722b58f35

  $res = mysqli_query($conn, $query);
  $is_success = execute_query($res, $action);

  // Jika gagal do something
  if (!$is_success) {
    header('Location:  ../../media.php?module=' . $module . '&act=detail&id=' . $_POST['todo_id']);
    return;
  }

  // check detail todo is_checked
  check_detail_todos($_POST['todo_id'], $conn);

  // Jika sukses do something
  $_SESSION['alert']['icon'] = 'fa fa-check';
  header('Location:  ../../media.php?module=' . $module . '&act=detail&id=' . $_POST['todo_id']);
}

/**
 * Action edit todo list
 */
if ($action === 'edit') {
  $query = ' UPDATE ' . $table_name . ' SET
  title       = "' . $_POST['title'] . '",
  description = "' . $_POST['description'] . '",
  start_date  = "' . $_POST['start_date'] . '",
  due_date    = "' . $_POST['due_date'] . '",
  assignee    = "' . $_POST['assignee'] . '",
  status      = "' . $_POST['status'] . '",
  updated_by  = "' . $current_user_id . '",
  updated_at  = "' . $now . '"
  WHERE id = ' . $_POST['id'];
  $res = mysqli_query($conn, $query);
  $is_success = execute_query($res, $action);

  // Jika gagal do something
  if (!$is_success) {
    header('Location:  ../../media.php?module=' . $module);
  }
  // Jika sukses do something
  $_SESSION['alert']['icon'] = 'fa fa-edit';
  header('Location:  ../../media.php?module=' . $module);
}

/**
 * Action edit detail todo list
 */
if ($action === 'edit-detail') {
  $is_checked = isset($_POST['is_checked']) ? '1' : '0';
  $query = ' UPDATE ' . $child_table_name . ' SET
  title       = "' . $_POST['title'] . '",
  description = "' . $_POST['description'] . '",
  is_checked  = "' . $is_checked . '"
  WHERE id = ' . $_GET['id'];
  $res = mysqli_query($conn, $query);

  $is_success = execute_query($res, $action);

  // Jika gagal do something
  if (!$is_success) {
    header('Location:  ../../media.php?module=' . $module . '&act=detail&id=' . $_GET['todo_id']);
    return;
  }

  // check detail todo is_checked
  check_detail_todos($_GET['todo_id'], $conn);
  // Jika sukses do something
  $_SESSION['alert']['icon'] = 'fa fa-edit';
  header('Location:  ../../media.php?module=' . $module . '&act=detail&id=' . $_GET['todo_id']);
}

/**
 * Action delete todo list
 */
if ($action === 'delete') {
  // delete data parent
  $query = 'DELETE FROM ' . $table_name . ' WHERE id = ' . $_GET['id'];
  $res = mysqli_query($conn, $query);
  $is_success = execute_query($res, $action);

  // Jika gagal do something
  if (!$is_success) {
    header('Location:  ../../media.php?module=' . $module);
  }

  // delete data child
  $child_table_query = 'DELETE FROM ' . $child_table_name . ' WHERE todo_id = ' . $_GET['id'];
  $res = mysqli_query($conn, $query);
  $is_success = execute_query($res, $action);

  // Jika gagal do something
  if (!$is_success) {
    header('Location:  ../../media.php?module=' . $module);
  }

  // Jika sukses do something
  $_SESSION['alert']['icon'] = 'fa fa-edit';
  header('Location:  ../../media.php?module=' . $module);
}

/**
 * Action delete detail todo list
 */
if ($action === 'delete-detail') {
  // delete data parent
  $query = 'DELETE FROM ' . $child_table_name . ' WHERE id = ' . $_GET['id'];
  $res = mysqli_query($conn, $query);
  $is_success = execute_query($res, $action);

  // Jika gagal do something
  if (!$is_success) {
    header('Location:  ../../media.php?module=' . $module . '&act=detail&id=' . $_GET['todo_id']);
    return;
  }

  // check detail todo is_checked
  check_detail_todos($_GET['todo_id'], $conn);

  // Jika sukses do something
  $_SESSION['alert']['icon'] = 'fa fa-trash';
  header('Location:  ../../media.php?module=' . $module . '&act=detail&id=' . $_GET['todo_id']);
}
