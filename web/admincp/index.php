<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="css/styleadmin.css">
    
<title>Admincp</title>
</head>
<!-- <?php
	session_start();
	if(!isset($_SESSION['dangnhap'])){
		header('Location: login.php');
	}
?> -->
<body>
	<h3 class="title_admin"> Welcome to AdminCP</h3>
	<div class="wrapper">
	<?php
		include("config/config.php");
		include("modules/header.php");
		include("modules/menu.php");
		include("modules/main.php");
		include("modules/footer.php");
	?>
	</div>
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="https://cdn.ckeditor.com/4.21.0/standard/ckeditor.js"></script>
    <script>
        CKEDITOR.replace( 'tomtat' );
        CKEDITOR.replace( 'noidung' );
        CKEDITOR.replace( 'thongtinlienhe' );
    </script>
</body>
</html>