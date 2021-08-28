<?php 
$aksi = "module/".$_GET['module']."/action.php"; 
$users = mysqli_query($conn, 'SELECT * FROM user ORDER BY id_user')
?>
<div class="col-xl-12 col-lg-12 col-md-12 col-12 layout-spacing card">
	<div class="widget-content-area br-4 mx-3 my-4 ">
		<form method="POST" action="<?php echo $aksi ?>?module=<?php echo $_GET['module'] ?>&act=<?php echo $_GET['act'] ?>" enctype="multipart/form-data">
			<div class="row">


				<div class="col-md-12 col-xs-12 form-group">
					<label class="text-dark">Title</label>
					<input type="text" class="form-control" name="title">
				</div>
				<div class="col-md-12 col-xs-12 form-group">
					<label class="text-dark">Description</label>
					<textarea class="form-control" name="description"></textarea>
				</div>
                <div class="col-md-12 col-xs-12 form-group">
					<label class="text-dark">Start Date</label>
					<input type="date" class="form-control" name="start_date">
				</div>
                <div class="col-md-12 col-xs-12 form-group">
					<label class="text-dark">Due Date</label>
					<input type="date" class="form-control" name="due_date">
				</div>
                <div class="col-md-12 col-xs-12 form-group">
					<label class="text-dark">Assignee</label>
					<select class="form-control" name="assignee">
                        <?php if($users) : ?>
                            <?php foreach($users as $user) : ?>
                                <option value="<?= $user['id_user'] ?>"><?= $user['nama'] ?></option>
                            <?php endforeach; ?>
                        <?php endif; ?>
                    </select>
				</div>
                <div class="col-md-12 col-xs-12 form-group">
					<label class="text-dark">Status</label>
					<select class="form-control" name="status">
                        <option value="0">On Going</option>
                        <option value="1">Finished</option>
                    </select>
				</div>

				<div class="col-md-12 col-xs-12 form-group">
					<button type="submit" class="btn btn-lg btn-primary">Simpan</button>	
				</div>
			</div>
		</form>
	</div>
</div>