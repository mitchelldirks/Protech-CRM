<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="Protech CRM is a system to manage a lot of Protech's projects">
<meta name="keywords" content="CRM">
<meta name="author" content="Protech">
<link rel="icon" href="assets/images/logo/protech.png" type="image/x-icon">
<link rel="shortcut icon" href="assets/images/logo/protech.png" type="image/x-icon">
<title><?php echo $page = isset($_GET['module']) ? ucwords($_GET['module']) : 'Dashboard'; ?> | Protech CRM</title>
<link href="https://fonts.googleapis.com/css?family=Rubik:400,400i,500,500i,700,700i&amp;display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,500,500i,700,700i,900&amp;display=swap" rel="stylesheet">
<<<<<<< HEAD
=======
<!-- <link rel="stylesheet" type="text/css" href="assets/css/fontawesome.css">
<link rel="stylesheet" type="text/css" href="http://dny.web.id/skripsi/sinta/portal/vendor/font-awesome-5/css/fontawesome-all.min.css">
<link rel="stylesheet" type="text/css" href="http://dny.web.id/skripsi/sinta/portal/vendor/font-awesome-4.7/css/font-awesome.min.css"> -->
>>>>>>> 0b1a85a7c06307a2d2543d90f1291d91259be3eb
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/uikit@3.4.2/dist/css/uikit.min.css">
<script src="https://cdn.jsdelivr.net/npm/uikit@3.4.2/dist/js/uikit.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/uikit@3.4.2/dist/js/uikit-icons.min.js"></script>

<link rel="stylesheet" type="text/css" href="assets/css/vendors/scrollbar.css">
<link rel="stylesheet" type="text/css" href="assets/css/vendors/animate.css">
<link rel="stylesheet" type="text/css" href="assets/css/vendors/jkanban.css">
<!-- ico-font-->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" type="text/css" href="assets/css/vendors/icofont.css">
<!-- Themify icon-->
<link rel="stylesheet" type="text/css" href="assets/css/vendors/themify.css">
<link rel="stylesheet" type="text/css" href="assets/css/vendors/feather-icon.css">
<link rel="stylesheet" type="text/css" href="assets/css/vendors/datatables.css">
<link rel="stylesheet" type="text/css" href="assets/css/vendors/bootstrap.css">
<link rel="stylesheet" type="text/css" href="assets/css/style.css">
<link id="color" rel="stylesheet" href="assets/css/color-1.css" media="screen">
<<<<<<< HEAD
<link rel="stylesheet" type="text/css" href="assets/css/responsive.css">

<style type="text/css">
a,button,[class="btn"]
/*body*/
{
	cursor: url('data:image/x-icon;base64,AAACAAEAICAAABAAAgCoEAAAFgAAACgAAAAgAAAAQAAAAAEAIAAAAAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP8AAAD/AAAA/wAAAP8AAAD/AAAA/wAAAP8AAAD/AAAA/wAAAP8AAAD/AAAA/wAAAP8AAAD/AAAAZAAAAEsAAAAvAAAADwAAAAoAAAAEAAAAAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/////////////////////////////////////////////////////////////////wAAAP8AAACBAAAAZQAAAEIAAAAZAAAADgAAAAcAAAADAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD/////////////////////////////////////////////////////////////////AAAA/wAAAIsAAAB2AAAAUQAAACYAAAARAAAACQAAAAUAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABgAAAP////////////////////////////////////////////////////////////////8AAAD/AAAAjgAAAIMAAABfAAAANgAAABMAAAALAAAABgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAATAAAA/////////////////////////////////////////////////////////////////xwcHP8AAACOAAAAigAAAGgAAABBAAAAFQAAAA0AAAAJAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAAAP///////////////////////////////////////////////////////////////////////////wAAAP8AAACNAAAAbwAAAEcAAAAbAAAADwAAAAsAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAAAAHAAAA////////////////////////////////////////////////////////////////////////////AAAA/wAAAI4AAAB3AAAAUwAAACYAAAARAAAADQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABwAAAP////////////////////////////////////////////////////////////////////////////////8AAAD/AAAAjgAAAIMAAABfAAAANQAAABIAAAAOAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAAAAVAAAA/////////////////////////////////////////////////////////////////////////////////wAAAP8AAACOAAAAigAAAGgAAAA/AAAAEwAAAA4AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABwAAACsAAAD//////////////////////////////////////////////////////////////////////////////////////wAAAP8AAACNAAAAbAAAAEMAAAATAAAADgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYAAAAYAAAA////////////////////////////////////////////////////////////////////////////////////////////AAAA/wAAAI4AAABsAAAAQwAAABMAAAAOAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEgAAAP///////////wAAAP////////////////////////////////////////////////////////////////////////////////8AAAD/AAAAjgAAAGwAAABCAAAAEgAAAA4AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAlAAAA////////////AAAA/////////////////////////////////////////////////////////////////////////////////wAAAP8AAACOAAAAawAAAEEAAAARAAAADAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP////////////////8AAAD/////////////////////////////////////////////////////////////////////////////////AAAA/wAAAI0AAABqAAAAQAAAAA4AAAAKAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD//////////////////////wAAAP////////////////////////////////////////////////////////////////////////////////8AAAD/AAAAiQAAAGQAAAA5AAAACgAAAAcAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP////////////////8AAAD/AAAA////////////////////////////////////////////////////////////AAAA//7+/v///////////wAAAP8AAAB8AAAAVQAAACsAAAAHAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/////////////////wAAAP8AAAD///////////////////////////////////////////////////////////8AAAD/////////////////AAAA/wAAAGQAAAA6AAAAFwAAAAQAAAACAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD/AAAA/wAAAP8AAAD/AAAAEAAAAP////////////////8AAAD/////////////////AAAA/////////////////wAAAP////////////////8AAAD/AAAAQgAAABwAAAAJAAAAAgAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgAAAAIAAAACAAAA/////////////////wAAAP////////////////8AAAD/////////////////AAAA////////////AAAA/wAAADsAAAAjAAAACQAAAAIAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD/////////////////AAAA/////////////////wAAAP////////////////8AAAD/IiIi/w0NDf8AAAAkAAAAGQAAAA4AAAACAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP////////////////8AAAD/////////////////AAAA/////////////////wAAAP8AAAAaAAAADQAAAAoAAAAGAAAAAwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP8AAAD/AAAA/wAAAP////////////////8AAAD/AAAA/wAAAP8AAAD/AAAAIAAAABQAAAAJAAAAAQAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACAAAA/////////////////wAAAP8AAACOAAAAbAAAAEUAAAAVAAAACwAAAAMAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD/////////////////AAAA/wAAAI4AAABsAAAAQgAAABIAAAAJAAAAAwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP////////////////8AAAD/AAAAjgAAAGsAAABBAAAAEAAAAAgAAAADAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/////////////////wAAAP8AAACMAAAAaQAAAD8AAAANAAAABgAAAAIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD/////////////////AAAA/wAAAIgAAABjAAAAOAAAAAkAAAAEAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP////////////////8AAAD/AAAAeAAAAFMAAAApAAAABQAAAAIAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/////////////////wAAAP8AAABVAAAANwAAABUAAAACAAAAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD/////////////////AAAA/wAAACkAAAAYAAAABwAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD/AAAA/wAAAP8AAAAQAAAADAAAAAYAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgAAAAIAAAACAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA/+AAf//gAD//4AA//+AAH//gAB//wAAf/8AAH/+AAA//gAAP/4AAD/8AAA/+AAAP/gAAD/wAAA/4AAAP+AAAH/gAAB/4QAAf/8AAP//AAH//wAH//+AD///8D////A////wP///8D////A////wf///8H////B////4///////8='), auto;
}
</style>
=======
<link rel="stylesheet" type="text/css" href="assets/css/responsive.css">
>>>>>>> 0b1a85a7c06307a2d2543d90f1291d91259be3eb
