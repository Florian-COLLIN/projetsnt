<?php
include("includes/init.php");

$_SESSION["currentPage"] = "404.php";
?>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title>Le Point K · 404</title>
		<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" />
		<link rel="stylesheet" href="fontawesome/css/all.css" />
		<link rel="stylesheet" href="includes/styles.css" />
		<link rel="icon" href="img/icon.png" />
	</head>
	<body>
		<div class="jumbotron jumbotron-fluid bg-light center">
			<div class="container justify-content-center">
				<img src="img/icon.png" style="height: 24rem; width: 24rem; float:center;" class="mb-4" />
				<h2 class="center mb-4">o_O</h2>
				<p><a href="index.php" class="btn btn-danger">Retour à l'accueil</a></p>
			</div>
		</div>
		
		<script src="jquery/jquery.slim.min.js"></script>
		<script src="bootstrap/js/bootstrap.bundle.min.js"></script>
		<script src="includes/scripts.js"></script>
	</body>
</html>
