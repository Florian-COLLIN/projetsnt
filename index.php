<?php
include("includes/init.php");

$_SESSION["currentPage"] = "index.php";
?>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title>Le Point K · Accueil</title>
		<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" />
		<link rel="stylesheet" href="fontawesome/css/all.css" />
		<link rel="stylesheet" href="includes/styles.css" />
		<link rel="icon" href="img/icon.png" />
	</head>
	<body>
		<!-- Header -->
		<?php include("includes/header.php"); ?>
		<div class="jumbotron jumbotron-fluid bg-light">
			<div class="container">
				<h2 class="font-weight-bold">Bienvenue sur le Point K !</h2>
				<p class="lead font-italic">Le mensuel libre du lycée Henri-Poincaré</p>
			</div>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-sm-12 mb-4">
					<h3 class="font-weight-bold mb-4">Articles récents</h3>
					<div class="row">
					</div>
				</div>
			</div>
		</div>
		<div class="jumbotron jumbotron-fluid bg-light">
			<div class="container">
				<h2 class="center">En avant</h2>
			</div>
		</div>
		<div class="container">
		</div>
		
		<!-- Footer -->
		<?php include("includes/footer.php"); ?>
		
		<script src="jquery/jquery.slim.min.js"></script>
		<script src="bootstrap/js/bootstrap.bundle.min.js"></script>
		<script src="includes/scripts.js"></script>
	</body>
</html>
