<?php
// koneksi db
include '../../config/koneksi.php';
$user             = $_SESSION['id_user'];
$module           = $_GET['module'];
$action           = $_GET['action'];
$table_name       = 'todo';
$child_table_name = 'todo_detail';
$now              = date('Y-m-d H:i:s');

/**
 * Execute query function
 */
function execute_query($res, $action)
{
  // Jika query gagal di execute
  // Maka akan muncul alert gagal
  $action_in_text = $action === 'create' ? 'menambahkan' : $action === 'edit' ? 'mengubah' : 'menghapus';
  if (!$res) {
    $_SESSION['alert']['class']   = 'alert alert-danger';
    $_SESSION['alert']['text']    = `Gagal ${$action_in_text} todo list`;
    $_SESSION['alert']['icon']    = 'fa fa-alert-circle';

    return false;
  }

  // Jika berhasil, maka akan lanjut
  $_SESSION['alert']['class']   = 'alert alert-success';
  $_SESSION['alert']['text']    = `Berhasil ${$action_in_text} todo list`;

  return true;
}

if (!isset($action)) {
  // lempar user ke index modul jika tidak ada action
  header(`Location:  ../../media.php?module=${$module}`);
}

/**
 * Action create todo list
 */
if ($action === 'create') {
  $query = `
      INSERT INTO ${$table_name}
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
      ) VALUES 
      (
        ${$_POST['title']},
        ${$_POST['description']},
        ${$_POST['start_date']},
        ${$_POST['due_date']},
        ${$_POST['assignee']},
        ${$_POST['status']},
        ${$_POST['create_by']},
        ${$_POST['create_at']},
        ${$_POST['updated_by']},
        ${$_POST['updated_at']}
      )
    `;

  $res = mysqli_query($conn, $query);
  $is_success = execute_query($res, $action);

  // Jika gagal do something
  if (!$is_success) {
    header(`Location:  ../../media.php?module=${$module}`);
  }
  // Jika sukses do something
  $_SESSION['alert']['icon'] = 'fa fa-check';
  header(`Location:  ../../media.php?module=${$module}`);
}

/**
 * Action edit todo list
 */
if ($action === 'edit') {
  $query = ` UPDATE ${$table_name} SET
      title       = ${$_POST['']}
      description = ${$_POST['']}
      start_date  = ${$_POST['']}
      due_date    = ${$_POST['']}
      assignee    = ${$_POST['']}
      status      = ${$_POST['']}
      create_by   = ${$_POST['']}
      create_at   = ${$_POST['']}
      updated_by  = ${$_POST['']}
      updated_at  = ${$_POST['']}
    WHERE id = ${$_POST['id']}
  `;
  $res = mysqli_query($conn, $query);
  $is_success = execute_query($res, $action);

  // Jika gagal do something
  if (!$is_success) {
    header(`Location:  ../../media.php?module=${$module}`);
  }
  // Jika sukses do something
  $_SESSION['alert']['icon'] = 'fa fa-edit';
  header(`Location:  ../../media.php?module=${$module}`);
}

/**
 * Action delete todo list
 */
if ($action === 'delete') {
  // delete data parent
  $query = `DELETE FROM ${$table_name} WHERE id = ${$_GET['id']}`;
  $res = mysqli_query($conn, $query);
  $is_success = execute_query($res, $action);

  // Jika gagal do something
  if (!$is_success) {
    header(`Location:  ../../media.php?module=${$module}`);
  }

  // delete data child
  $child_table_query = `DELETE FROM ${$child_table_name} WHERE todo_id = ${$_GET['id']}`;
  $res = mysqli_query($conn, $query);
  $is_success = execute_query($res, $action);

  // Jika gagal do something
  if (!$is_success) {
    header(`Location:  ../../media.php?module=${$module}`);
  }

  // Jika sukses do something
  $_SESSION['alert']['icon'] = 'fa fa-edit';
  header(`Location:  ../../media.php?module=${$module}`);
}

?>