<script src="assets/js/jquery-3.5.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.js" integrity="sha512-n/4gHW3atM3QqRcbCn6ewmpxcLAHGaDjpEBu4xZd47N0W2oQ+6q7oc3PXstrJYXcbNU1OHdQ1T7pAP+gi5Yu8g==" crossorigin="anonymous"></script>
<script src="assets/js/bootstrap/popper.min.js"></script>
<script src="assets/js/bootstrap/bootstrap.js"></script>
<script src="assets/js/icons/feather-icon/feather.min.js"></script>
<script src="assets/js/icons/feather-icon/feather-icon.js"></script>
<script src="assets/js/config.js"></script>
<script src="assets/js/sidebar-menu.js"></script>
<script src="assets/js/tooltip-init.js"></script>
<script src="assets/js/script.js"></script>
<!-- <script src="assets/js/theme-customizer/customizer.js"></script> -->
<?php if (strtolower($_GET['module'])=='kanban' or strtolower($_GET['act'])=='kanban'): ?>
<script src="assets/js/jkanban/jkanban.js"></script>
<script src="assets/js/jkanban/pt-kanban.js"></script>
<?php endif ?>
<script src="assets/js/datatable/datatables/jquery.dataTables.min.js"></script>
<script src="assets/js/datatable/datatables/datatable.custom.js"></script>
<script type="text/javascript">
	$('input:visible:first').focus();
</script>
<?php if (!isset($_GET['module'])): ?>
	<script src="assets/js/custom-card/custom-card.js"></script>
	<script src="assets/js/datepicker/date-picker/datepicker.js"></script>
	<script src="assets/js/datepicker/date-picker/datepicker.en.js"></script>
	<script src="assets/js/datepicker/date-picker/datepicker.custom.js"></script>
	<script src="assets/js/general-widget.js"></script>
	<script type="text/javascript">
		$.ajax({
			type: "POST",
			url: "https://zenquotes.io/api/random",
			success: function(msg){
				console.log(msg)
				$('#quote').html(msg.h);
			}
		});
	</script>
	<?php endif ?>