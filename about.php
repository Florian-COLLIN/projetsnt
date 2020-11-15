<?php
include("includes/init.php");

$_SESSION["currentPage"] = "about.php";
?>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title>Le Point K · À propos de nous</title>
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
				<nav aria-label="breadcrumb">
					<ol class="breadcrumb bg-light">
						<li class="breadcrumb-item"><a href="index.php">Accueil</a></li>
						<li class="breadcrumb-item active" aria-current="page">À propos de nous</li>
					</ol>
				</nav>
				<h2 class="font-weight-bold">À propos de nous</h2>
			</div>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-sm-12 mb-4">
					<div class="row">
						<div class="col-sm-12 col-md-8">
							<p>Le PoinK (ou le Point-K ou le PoinKa) est un journal/site web créé par un groupe d'élève du lycée Henri-Poincaré de Nancy dans lequel sont publiés des articles d'actualité.</p>
							<img src="img/logo.png" class="img img-rounded m-4" alt="Logo du journal le Point-K" />
							<p>Il existe <span data-toggle="tooltip" title="Disponible uniquement au lycée Henri-Poincaré">sous forme papier</span>, et sous forme numérique (vous êtes actuellement dessus, en effet :)). Il est fort probable que le site web compte plus d'articles que le journal.</p>
						</div>
						<div class="col-sm-12 col-md-4">
							<h3 class="font-weight-bold">Notre mission</h3>
							Notre but est de créer un petit journal, entre élèves.
							<ul>
								<li>Nous essayons d'être le plus juste possible, c'est pourquoi nous mettons nos sources quand on en dispose.</li>
								<li>Nous avons pour but de ne pas trop nous censurer, si nous avons envie d'écrire un article, nous l'écrivons (nous n'abuserons tout de même pas non plus :)).</li>
								<li>Nous écrirons des articles sur tous les sujets possibles.</li>
								<li>S'il y a le moindre problème sur ce site web, nous essaierons de le corriger au plus vite selon nos disponibilités.</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<!-- Footer -->
		<?php include("includes/footer.php"); ?>
		
		<script src="jquery/jquery.slim.min.js"></script>
		<script src="bootstrap/js/bootstrap.bundle.min.js"></script>
		<script src="includes/scripts.js"></script>
	</body>
</html>
