<?php
include("includes/init.php");

$_SESSION["currentPage"] = "join.php";
?>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title>Le Point K · Nous rejoindre</title>
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
						<li class="breadcrumb-item active" aria-current="page">Nous rejoindre</li>
					</ol>
				</nav>
				<h2 class="font-weight-bold">Nous rejoindre</h2>
				<!--<p class="lead">This is a modified jumbotron that occupies the entire horizontal space of its parent.</p>   -->
			</div>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-sm-12 mb-4">
					<h3 class="font-weight-bold">Vous voulez nous rejoindre ?</h3>
					<div class="row">
						<div class="col-sm-12 col-md-6">
							<p>Vous pouvez nous rejoindre sur notre serveur Discord...</p>
							<iframe class="o_reseau" src="https://discordapp.com/widget?id=675385043652182057&amp;theme=dark" allowtransparency="true" width="350" height="500" frameborder="0"></iframe>
						</div>
						<div class="col-sm-12 col-md-6">
							<p>...ou sur notre compte Instagram.</p>
							<iframe class="instagram-media o_reseau instagram-media-rendered" id="instagram-embed-0" src="https://www.instagram.com/p/CCBshAQIZJz/embed/captioned/?cr=1&amp;v=12&amp;wp=540&amp;rd=https%3A%2F%2Fnath54.github.io&amp;rp=%2FLe_Point_K%2Frejoindre.html#%7B%22ci%22%3A0%2C%22os%22%3A1984%2C%22ls%22%3A1915%2C%22le%22%3A1927%7D" allowtransparency="true" allowfullscreen="true" data-instgrm-payload-id="instagram-media-payload-0" scrolling="no" style="background: white none repeat scroll 0% 0%; max-width: 540px; width: calc(100% - 2px); border-radius: 3px; border: 1px solid rgb(219, 219, 219); box-shadow: none; display: block; margin: 0px 0px 12px; min-width: 326px; padding: 0px;" height="826" frameborder="0"></iframe>
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
