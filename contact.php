<?php
include("includes/init.php");

if(!isset($_SESSION["email"])) {
	$_SESSION["email"] = "";
}

$_SESSION["currentPage"] = "contact.php";
?>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title>Le Point K · Nous contacter</title>
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
						<li class="breadcrumb-item active" aria-current="page">Nous contacter</li>
					</ol>
				</nav>
				<h2 class="font-weight-bold">Nous contacter</h2>
			</div>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-sm-12 mb-4">
					<div class="row">
						<div class="col-sm-12 col-md-6">
							<h3 class="font-weight-bold">Nous contacter</h3>
							<i class="fas fa-map-marker-alt"></i> 2, rue de la Visitation, 54000 Nancy, France<br />
							<a href="mailto:contact.lejournaldepoinca@gmail.com"><i class="fas fa-envelope"></i> contact.lejournaldepoinca@gmail.com</a><br />
							<i class="fas fa-phone"></i> +33 6 01 39 07 48
						</div>
						<div class="col-sm-12 col-md-6">
							<h3 class="font-weight-bold">Envoyer un message</h3>
							<form method="post" action="send-message.php">
								<div class="form-group row">
									<label class="col-auto" for="email">E-mail</label>
									<div class="col">
										<input type="email" class="form-control" id="email" aria-describedby="emailHelp" value="<?php echo($_SESSION['email']); ?>">
									</div>
									<small id="emailHelp" class="form-text text-muted ml-3">Nous ne divulgons pas votre adresse e-mail et nous ne l'utilisons qu'uniquement pour vous répondre.</small>
								</div>
								<div class="form-group row">
									<label class="col-auto" for="subject">Objet</label>
									<div class="col">
										<input type="text" class="form-control" id="subject" required>
									</div>
								</div>
								<div class="form-group">
									<textarea class="form-control custom-control" placeholder="Message" required></textarea>
								</div>
								<button class="btn btn-secondary" type="submit"><i class="fas fa-paper-plane"></i> Envoyer</button>
							</form>
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
