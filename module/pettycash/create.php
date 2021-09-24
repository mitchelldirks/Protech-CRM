<?php $aksi = "module/".$_GET['module']."/action.php"; ?>
<div class="col-xl-12 col-lg-12 col-md-12 col-12 layout-spacing card">
	<div class="widget-content-area br-4 ">
		<form method="POST" action="<?php echo $aksi ?>?module<?php echo $_GET['module'] ?>&act=income<?php echo $_GET['act'] ?>" enctype="multipart/form-data">
			<div class="row">
				<div class="col-md-12 col-xs-12 form-group">
					<label class="text-dark">Flow</label>
					<input type="text" class="form-control" name="flow">
				</div>
			</div>
			<div class="row">
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
				<label for="exampleFormControlInput1">Nama</label>
        		<input type="text" class="form-control" name="nama" id="exampleFormControlInput1" placeholder="isi nama anda....">
				</div>
				<div class="col-md-6 col-xs-12 form-group">
					<label class="text-dark">Amount</label>
					<div class="input-group mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text" id="nominal">Rp.</span>
						</div>
						<input type="number" class="form-control" name="amount" aria-label="nominal" aria-describedby="nominal">
					</div>
				
				<div class="col-md-12 col-xs-12 form-group">
					<label class="text-dark">Subject</label>
					<input type="text" class="form-control" name="subject">
				</div>
				<div class="col-md-12 col-xs-12 form-group">
					<label class="text-dark">Deskripsi</label>
					<textarea class="form-control" id="description" name="description"></textarea>
				</div>
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