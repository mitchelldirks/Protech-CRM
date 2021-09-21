<?php
$aksi = "module/" . $_GET['module'] . "/action.php";
$todo = mysqli_fetch_array(mysqli_query($conn, 'SELECT * FROM todo WHERE id = ' . $_GET['id']));
$users = mysqli_query($conn, 'SELECT * FROM user ORDER BY id_user')
?>
<div class="col-xl-12 col-lg-12 col-md-12 col-12 layout-spacing card">
	<div class="widget-content-area br-4 mx-3 my-4 ">
		<form method="POST" action="<?php echo $aksi ?>?module=<?php echo $_GET['module'] ?>&act=<?php echo $_GET['act'] ?>" enctype="multipart/form-data">
			<div class="row">
                <input type="hidden" name="id" value="<?= $_GET['id'] ?>">
				<div class="col-md-12 col-xs-12 form-group">
					<label class="text-dark">Title</label>
					<input type="text" class="form-control" name="title" value="<?= $todo['title'] ?>">
				</div>
				<div class="col-md-12 col-xs-12 form-group">
					<label class="text-dark">Description</label>
					<textarea class="form-control" name="description"><?= $todo['description'] ?></textarea>
				</div>
                <div class="col-md-12 col-xs-12 form-group">
					<label class="text-dark">Start Date</label>
					<input type="date" class="form-control" name="start_date" value="<?= $todo['start_date'] ?>">
				</div>
                <div class="col-md-12 col-xs-12 form-group">
					<label class="text-dark">Due Date</label>
					<input type="date" class="form-control" name="due_date" value="<?= $todo['due_date'] ?>">
				</div>
                <div class="col-md-12 col-xs-12 form-group">
					<label class="text-dark">Assignee</label>
					<select class="form-control" name="assignee">
                        <?php if($users) : ?>
                            <?php foreach($users as $user) : ?>
                                <option <?= $user['id_user'] === $todo['assignee'] ? 'selected' : '' ?> value="<?= $user['id_user'] ?>"><?= $user['nama'] ?></option>
                            <?php endforeach; ?>
                        <?php endif; ?>
                    </select>
				</div>
                <div class="col-md-12 col-xs-12 form-group">
					<label class="text-dark">Status</label>
					<select class="form-control" name="status">
                        <option <?= $todo['status'] == 0 ? 'selected' : '' ?> value="0">On Going</option>
                        <option <?= $todo['status'] == 1 ? 'selected' : '' ?> value="1">Finished</option>
                    </select>
				</div>

				<div class="col-md-12 col-xs-12 form-group">
					<button type="submit" class="btn btn-lg btn-primary">Simpan</button>	
				</div>
			</div>
		</form>
	</div>
</div>