<?php 
$aksi 	= "module/".$_GET['module']."/action.php";
$row 	= mysqli_fetch_array(mysqli_query($conn,"SELECT * FROM pettycash where id = '".$_GET['id']."'"));
?>

<div class="col-xl-12 col-lg-12 col-md-12 col-12 layout-spacing card">
	<div class="widget-content-area br-4 ">
		<form method="POST" action="<?php echo $aksi ?>?module=<?php echo $_GET['module'] ?>&act=<?php echo $_GET['act'] ?>" enctype="multipart/form-data">
			<input type="hidden" name="id" value="<?php echo $row['id']; ?>">
			<div class="row">
         <div class="col-md-12 form-group">
         <div class="form-group">
         <label class="text-dark">Flow</label>
          <select class="form-control custom-select" name="flow">
          	<option selected disabled>--Pilih salah satu--</option>
			<option <?php echo $row['flow']=='income'? 'selected':"" ?> value="income">Income</option>
			<option <?php echo $row['flow']=='expense'? 'selected':"" ?> value="expense">Expense</option>
	  </select>
			 <div class="form-group">
				<label class="text-dark">Payment Type</label>
					<select class="form-control custom-select" name="payment_type">
					<option selected disabled>--Pilih salah satu--</option>
					<option <?php echo $row['payment_type']=='transfer'? 'selected':"" ?> value="transfer">Transfer</option>
					<option <?php echo $row['payment_type']=='cash'? 'selected':"" ?> value="cash">Cash</option>
					</select>
			</div>
		 	<div class="form-group">
		 		<label for="exampleFormControlInput1">Payment Date</label>
         		<input type="date" class="form-control" id="exampleFormControlInput1" name="payment_date" placeholder="date" value="<?php echo $row['payment_date'] ?>">
			</div>
			<div class="form-group">
          	<?php $data = mysqli_query($conn,"SELECT * FROM project order by id desc") ?>
				<label class="text-dark">Project </label>
					<select class="form-control custom-select" name="id_project">
						<option selected>--Tidak Berafiliasi dengan project apapun--</option>
						<?php foreach ($data as $row2): ?>
							<option <?php echo $row['id_project']==$row2['id'] ?'selected':"" ?> value="<?php echo $row2['id'] ?>"><?php echo ucwords($row2['nama_project']) ?></option>
						<?php endforeach ?>
					</select>
			</div>
			<div class="form-group">
				<label class="text-dark">Amount</label>
			<div class="input-group mb-3">
			<div class="input-group-prepend">
				<span class="input-group-text" id="amount" >Rp.</span>
			</div>
			 <input type="Number" class="form-control" name="amount" aria-label="amount" aria-describedby="amount" value="<?php echo $row['amount']?>">
			</div>
				
		<div class="form-group">
			 <label class="text-dark">Subject</label>
				<input type="text" class="form-control" name="subject" value="<?php echo $row['subject'] ?>">
		</div>
		<div class="form-group">
			 <label class="text-dark">Deskripsi</label>
				<input type="text" class="form-control" name="description" value="<?php echo $row['description'] ?>">
		</div>
		<div class="col-md-12 col-xs-12 form-group">
					<button type="submit" class="btn btn-lg btn-primary">Simpan</button>	
				</div>


        </form>
    </div>
</div>
				</div>
			</div>
		</div>
	</div>
</div>