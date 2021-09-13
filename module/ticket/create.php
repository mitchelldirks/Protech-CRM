<?php $aksi = "module/".$_GET['module']."/action.php"; ?>
<div class="col-xl-12 col-lg-12 col-md-12 col-12 layout-spacing card">
	<div class="widget-content-area br-4 ">
		<form method="POST" action="<?php echo $aksi ?>?module=<?php echo $_GET['module'] ?>&act=<?php echo $_GET['act'] ?>" enctype="multipart/form-data">
			<div class="row">


				<div class="col-md-12 col-xs-12 form-group">
					<label class="text-dark">Title</label>
					<input required required type="text" class="form-control" name="title">
				</div>
				<div class="col-md-12 col-xs-12 form-group">
					<label class="text-dark">Subtitle</label>
					<input required type="text" class="form-control" name="subtitle">
				</div>
				<div class="col-md-4 col-xs-12 form-group">
					<label class="text-dark">Ticket From</label>
					<input required type="text" class="form-control" name="ticket_from" placeholder='Separate with coma ","'>
				</div>
				<div class="col-md-4 col-xs-12 form-group">
					<label class="text-dark">Ticket To</label>
					<input type="text" class="form-control" name="ticket_to" placeholder='Separate with coma ","'>
				</div>
				<div class="col-md-4 col-xs-12 form-group">
					<label class="text-dark">Ticket Received</label>
					<input required type="date" class="form-control" name="date_received" value="<?php 	echo date('Y-m-d') ?>">
				</div>
				<div class="col-md-12 col-xs-12 form-group">
					<label class="text-dark">Message</label>
					<textarea class="form-control" name="message"></textarea>
				</div>
				<div class="col-md-12 col-xs-12" id="add">
				</div>
				<div class="col-md-12 col-xs-12 form-group">
					<button class="btn btn-link pull-right" type="button" onclick="addfield('add')"><i class="fa fa-plus"></i> Add request list</button>
				</div>

				<div class="col-md-12 col-xs-12 form-group">
					<button type="submit" class="btn btn-lg btn-primary">Simpan</button>	
				</div>
			</div>
		</form>
	</div>
</div>
<script type="text/javascript">
	function addfield(id){

			$("#add").append('<tr>'
				+'<td>'
				+'<select class="form-control" name="barang_id[]">'
				+'<option value="">- Pilih Barang -</option>'
				<?php
				$barang = mysqli_query($conn, "SELECT * FROM barang ORDER BY id DESC");
				foreach($barang as $br){
					?>
					+'<option value="<?php echo $br['id']; ?>"><?php echo $br['nama_barang']; ?> | Rp <?php echo number_format($br['harga']); ?></option>'
				<?php } ?>
				+'</select>'
				+'</td>'
				+'<td><input type="text" class="form-control" name="qty[]"></td>'
				+'<td class="delete_field"><a href="javascript:void(0);" class="btn btn-danger"><i class="fa fa-trash"></i></a></td>'
				+'</tr>');

			$(".tables").on('click', '.delete_field', function(e){
				e.preventDefault();
				x--;
				$(this).parent('tr').remove();
			});
	}
</script>