<?php
include("includes/init.php");

$_SESSION["currentPage"] = "upload-file.php";
?>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title>Le Point K · Importer un fichier</title>
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
				<h2 class="font-weight-bold">Importer un fichier</h2>
			</div>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-sm-12 mb-4">
					<form method="post" action="uploading.php" enctype="multipart/form-data">
						<div class="mb-2 row">
							<div class="col-md-5 col-sm-12 mb-1">
								<input type="text" name="name" class="form-control" style="width: 100%;" maxlength="255" placeholder="monfichier.png" />
								<label for="name">Nom du fichier <span class="small">(max 255)</span></label>
							</div>
							<div class="col-md-4 col-sm-12 custom-file mb-1">
								<input type="file" class="custom-file-input" id="file" name="file">
								<label class="custom-file-label" for="file">Choisir un fichier</label>
							</div>
							<div class="col-md-3 col-sm-12 mb-1">
								<button class="btn btn-primary" type="submit"><i class="fas fa-upload"></i> Importer le fichier</button>
							</div>
						</div>
					</form>
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
