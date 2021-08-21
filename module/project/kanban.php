<?php $aksi="module/".$_GET['module']."/action.php"; ?>
<style type="text/css">
	.crm-detail{
		transition: 0.5s;
	}
	.crm-detail:hover{
		text-decoration: underline;
		color: chocolate;
		margin-top: -5px;
		transition: 0.5s;
	}
</style>
<!-- Container-fluid Ends-->
<div class="col-xl-12 col-lg-12 col-md-12 col-12 card layout-spacing">
	<?php 
	if (isset($_SESSION['flash'])): ?>
		<div class="<?php echo $_SESSION['flash']['class']; ?> mt-3 mb-3"> 
			<i class="<?php echo $_SESSION['flash']['icon'] ?>"></i> <?php echo $_SESSION['flash']['label']; ?>
			<button type="button" class="close" data-dismiss="alert" aria-label="Close"> <span aria-hidden="true">×</span> </button>
		</div>
	<?php endif ?>
	<div class="widget-content-area br-4">
		<span class="float-left">
			<a class="btn btn-primary ml-2 mb-4 mt-2" href="?module=<?php echo $_GET['module'] ?>&act=create">Tambah <?php echo $_GET['module'] ?></a>
		</span>
		<span class="float-right">
			<?php $count_done=mysqli_num_rows(mysqli_query($conn,"SELECT * from project where tracking = ".count($tracking))); ?>
			<?php if ($count_done > 0): ?>
				<a class="btn btn-link mr-2 mb-4 mt-2 text-muted" href="?module=<?php echo $_GET['module'] ?>&act=history">
					<?php echo ucwords($_GET['module']) ?> selesai (<?php echo $count_done; ?>)
				</a>
			<?php endif ?>
		</span>
	</div>

	<div class="container">
		<h3 class="font-weight-light ml-2 mb-4 mt-2">Kanban Board</h3>
		<?php foreach ($tracking as $key => $value): ?>
			<div class="col-md-4 col-xs-12">
				<div class="card-body">
					<h6 class="card-title text-uppercase text-truncate py-2"><?php echo ucwords($value) ?></h6>
					<div class="items border border-light">
						<?php 
						$query=mysqli_query($conn,"SELECT * from project where tracking = ".$key);
						foreach ($query as $row): ?>

							<div class="card draggable shadow-sm" id="cd1" draggable="true" ondragstart="drag(event)">
								<div class="card-body p-2">
									<div class="card-title">
										<a style="font-size: 12px" href="?module=<?php echo $_GET['module'] ?>&act=detail&id=<?php echo $row['id']; ?>" class="lead font-weight-light"><strong class="text-truncate"><?php echo $row['nama_project'] ?></strong></a>
									</div>
									<p style="font-size: 8px">
										This is a description of a item on the board.
									</p>
									<a class="btn btn-primary btn-block btn-sm" href="?module=<?php echo $_GET['module'] ?>&act=detail&id=<?php echo $row['id']; ?>">View</a>
								</div>
							</div>
						<?php endforeach ?>

					</div>
				</div>
			</div>
		<?php endforeach ?>

	</div>
</div>
