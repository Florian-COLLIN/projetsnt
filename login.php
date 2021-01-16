<?php
include("includes/init.php");
?>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title>Le Point K · Se connecter</title>
		<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" />
		<link rel="stylesheet" href="fontawesome/css/all.css" />
		<link rel="stylesheet" href="includes/styles.css" />
		<link rel="icon" href="img/icon.png" />
	</head>
	<body onload="on_page_loaded();">
		<!-- Header -->
		<?php include("includes/header.php"); ?>
		<div class="jumbotron jumbotron-fluid bg-light">
			<div class="container">
				<nav aria-label="breadcrumb">
					<ol class="breadcrumb bg-light">
						<li class="breadcrumb-item"><a href="index.php">Accueil</a></li>
						<li class="breadcrumb-item active" aria-current="page">Se connecter</li>
					</ol>
				</nav>
				<h2 class="font-weight-bold">Se connecter</h2>
			</div>
		</div>
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-sm-12 col-md-6" id="div_connection">
					<h3 class="font-weight-bold">Se connecter</h3>
					<form method="post" action="login-verif.php">
						<div class="form-row">
							<div class="form-group col">
								<label for="username">Nom</label>
								<input type="text" class="form-control" name="username" id="username" required>
							</div>
							<div class="form-group col">
								<label for="password">Mot de passe</label>
								<input type="password" class="form-control" name="password" id="password" required>
							</div>
						</div>
						<div class="form-group custom-control custom-checkbox">
							<input type="checkbox" class="custom-control-input" name="cookiesLogin" id="cookiesLogin">
							<label class="custom-control-label" for="cookiesLogin">Garder la session active <?php include("includes/cookies.php"); ?></label>
						</div>
						<button type="submit" class="btn btn-primary col-sm mb-2">Se connecter</button>
					</form>
					<p>Vous n'avez pas de compte ? <a href="#" class="btn btn-sm btn-success" onclick="change_to_inscription();">Inscrivez-vous</a></p>
				</div>
				<div class="col-sm-12 col-md-6" id="div_inscription">
					<h3 class="font-weight-bold">Créer un compte</h3>
					<p>Un compte sert à commenter et liker les articles.</p>
					<form method="post" action="create-account.php">
						<div class="form-row">
							<div class="form-group col">
								<label for="username">Nom*</label>
								<input type="text" class="form-control" name="username" id="username" required>
							</div>
							<div class="form-group col">
								<label for="email">E-mail</label>
								<input type="email" class="form-control" name="email" id="email">
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col">
								<label for="password">Mot de passe*</label>
								<input type="password" class="form-control" name="password" id="password" required>
							</div>
							<div class="form-group col">
								<label for="passwordConfirm">Confirmation*</label>
								<input type="password" class="form-control" name="passwordConfirm" id="passwordConfirm" required>
							</div>
						</div>
						<?php
						$_SESSION["math1"] = rand(0,10);
						$_SESSION["math2"] = rand(0,10);
						?>
						<div class="form-group">
							<label for="math"><?php echo($_SESSION["math1"]); ?> + <?php echo($_SESSION["math2"]); ?></label>
							<input type="text" class="form-control" width="20" id="math" required>
						</div>
						<button type="submit" class="btn btn-success col-sm mb-2">Créer un compte</button>
					</form>
					<p>Vous avez déjà un compte ? <a href="#" class="btn btn-sm btn-primary" onclick="change_to_connection();">Connectez-vous</a></p>
				</div>
			</div>
		</div>
		<br />
		<!-- Footer -->
		<?php include("includes/footer.php"); ?>
		<script src="jquery/jquery.slim.min.js"></script>
		<script src="bootstrap/js/bootstrap.bundle.min.js"></script>
		<script src="includes/scripts.js"></script>
		<script src="js/login.js" type="text/javascript"></script>
	</body>
</html>
