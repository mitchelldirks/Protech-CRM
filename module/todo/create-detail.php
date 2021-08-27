<?php
$aksi = "module/" . $_GET['module'] . "/action.php";
$users = mysqli_query($conn, 'SELECT * FROM user ORDER BY id_user')
?>
<div class="col-xl-12 col-lg-12 col-md-12 col-12 layout-spacing card">
    <div class="widget-content-area br-4 mx-3 my-4 ">
        <form method="POST" action="<?php echo $aksi ?>?module=<?php echo $_GET['module'] ?>&act=<?php echo $_GET['act'] ?>" enctype="multipart/form-data">
            <div class="row">
                <input type="hidden" name="todo_id" value="<?= $_GET['id'] ?>">

                <div class="col-md-12 col-xs-12 form-group">
                    <label class="text-dark">Title</label>
                    <input type="text" class="form-control" name="title">
                </div>
                <div class="col-md-12 col-xs-12 form-group">
                    <label class="text-dark">Description</label>
                    <textarea class="form-control" name="description"></textarea>
                </div>
                <div class="col-md-12 col-xs-12 form-check ml-3 mb-3">
                    <input class="form-check-input" type="checkbox" name="is_checked" id="is_checked_field">
                    <label class="form-check-label" for="is_checked_field">
                        Is Finished?
                    </label>
                </div>

                <div class="col-md-12 col-xs-12 form-group">
                    <button type="submit" class="btn btn-lg btn-primary">Simpan</button>
                </div>
            </div>
        </form>
    </div>
</div>