<?php $aksi = "module/".$_GET['module']."/action.php"; ?>
<div class="col-xl-12 col-lg-12 col-md-12 col-12 layout-spacing card">
	<div class="widget-content-area br-4 ">
		<form method="POST" action="<?php echo $aksi ?>?module=<?php echo $_GET['module'] ?>&act=<?php echo $_GET['act'] ?>" enctype="multipart/form-data">
			<div class="row">
				<div class="col-md-6 col-xs-12 form-group">
					<label class="text-dark">Project</label>
					<input type="text" class="form-control" name="nama_project">
				</div>
				<div class="col-md-6 col-xs-12 form-group">
					<label class="text-dark">URL Demo/Live (optional)</label>
					<input type="url" class="form-control" name="url">
				</div>
				<div class="col-md-6 col-xs-12 form-group">
					<?php $data = mysqli_query($conn,"SELECT * FROM kategori order by nama_kategori") ?>
					<label class="text-dark">Kategori</label>
					<select class="form-control custom-select" name="kategori">
						<?php foreach ($data as $row): ?>
							<option value="<?php echo $row['id'] ?>"><?php echo ucwords($row['nama_kategori']) ?></option>
						<?php endforeach ?>
					</select>
				</div>
				<div class="col-md-6 col-xs-12 form-group">
					<label class="text-dark">Case</label>
					<select class="form-control custom-select" name="project_case">
						<?php foreach ($project_case as $id => $label): ?>
							<option value="<?php echo $id ?>"><?php echo ucwords($label) ?></option>
						<?php endforeach ?>
					</select>
				</div>
				<div class="col-md-6 col-xs-12 form-group">
					<label class="text-dark">Priority</label>
					<select class="form-control custom-select" name="priority">
						<?php foreach ($priority as $id => $label): ?>
							<option value="<?php echo $id ?>" <?php echo $label=='normal'?"selected":"" ?>><?php echo ucwords($label) ?></option>
						<?php endforeach ?>
					</select>
				</div>
				<div class="col-md-6 col-xs-12 form-group">
					<label class="text-dark">Tracker</label>
					<select class="form-control custom-select" name="tracking">
						<?php foreach ($tracking as $id => $label): ?>
							<option value="<?php echo $id ?>" <?php echo $label=='back log'?"selected":"" ?>><?php echo ucwords($label) ?></option>
						<?php endforeach ?>
					</select>
				</div>
				<div class="col-md-6 col-xs-12 form-group">
					<?php $data = mysqli_query($conn,"SELECT * FROM pegawai where is_active='1' and jabatan != 0 order by nama_pegawai") ?>
					<label class="text-dark">Assignee</label>
					<select class="form-control custom-select" name="assignee">
						<?php foreach ($data as $row): ?>
							<option value="<?php echo $row['id'] ?>" <?php echo $_SESSION['id_user']==$row['id'] ? 'selected':'' ?>><?php echo ucwords($row['nama_pegawai']) ?></option>
						<?php endforeach ?>
					</select>
				</div>
				<div class="col-md-6 col-xs-12 form-group">
					<label class="text-dark">Nominal</label>
					<div class="input-group mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text" id="nominal">Rp.</span>
						</div>
						<input type="number" class="form-control" name="nominal" aria-label="nominal" aria-describedby="nominal">
					</div>
				</div>
				<div class="col-md-6 col-xs-12 form-group">
					<label class="text-dark">Start Date</label>
					<input type="date" class="form-control" name="start_date">
					<!-- <input type="date" class="form-control" name="start_date" value="<?php echo date('Y-m-d') ?>" min="<?php echo date('Y-m-d') ?>"> -->
				</div>
				<div class="col-md-6 col-xs-12 form-group">
					<label class="text-dark">End Date</label>
					<!-- <input type="date" class="form-control" name="due_date" value="<?php echo date('Y-m-');echo date('d')+1 ?>" min="<?php echo date('Y-m-d') ?>"> -->
					<input type="date" class="form-control" name="due_date">
				</div>
				<div class="col-md-12 col-xs-12 form-group">
					<label class="text-dark">Deskripsi</label>
					<textarea class="form-control" id="deskripsi" name="deskripsi"></textarea>
				</div>
				<div class="col-md-12 col-xs-12 form-group">
					<button type="submit" class="btn btn-lg btn-primary">Simpan</button>
				</div>
			</div>
		</form>
	</div>
</div>
<script src="//cdn.ckeditor.com/4.14.1/standard/ckeditor.js"></script>
<script type="text/javascript">
	CKEDITOR.replace('deskripsi');
</script>
