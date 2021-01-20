<?php
include("includes/init.php");

$id = (int)($_GET["id"]);

$_SESSION["currentArticleId"] = $id;

$_SESSION["currentPage"] = "edit-article.php";

if(!isset($_SESSION["writer"]) or !$_SESSION["writer"]) {
	header("Location: index.php");
}

if ($id == 0) {
	$title = "";
	$content = "";
	$mainCategory = 0; 
}

else {
	$articleInfosRequest = $db->prepare("SELECT * FROM articles WHERE id = :id");
	$articleInfosRequest->execute(array(
		"id" => $id
	));
	
	while ($articleInfos = $articleInfosRequest->fetch()) {
		$title = $articleInfos["title"];
		$mainCategory = $articleInfos["mainCategory"];
		$image = $articleInfos["image"];
	}
	
	$articleInfosRequest->closeCursor;
	
	$articleContentRequest = $db->prepare("SELECT * FROM `articles-contents` WHERE article = :articleId");
	$articleContentRequest->execute(array(
		"articleId" => $id
	));
	
	while ($articleContent = $articleContentRequest->fetch()) {
		$content = $articleContent["content"];
	}
	
	$articleContentRequest->closeCursor();
}
?>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title>Le Point K · Éditer un article</title>
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
				<h2 class="font-weight-bold">Éditer un article</h2>
			</div>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-sm-12 col-md-9 mb-4">
					<form method="post" action="post-article.php">
						<div class="mb-2 row">
							<div class="col-md-4 col-sm-12">
								<label for="title">Titre <span class="small">(max 255)</span></label>
								<input type="text" name="title" class="form-control" style="width: 100%;" maxlength="255" value="<?php echo($title); ?>" />
							</div>
							<div class="col-md-4 col-sm-12">
								<label for="mainCategory">Catégorie principale</label>
								<select class="custom-select" name="mainCategory">
									<?php
									
									$listCategoriesRequest = $db->query("SELECT id, name FROM categories");
									
									while ($listCategories = $listCategoriesRequest->fetch()) {
										if ($listCategories["id"] == $mainCategory) {
											?>
											<option value="<?php echo($listCategories["id"]); ?>" selected><?php echo($listCategories["name"]); ?></option>
											<?php
										}
										else {
											?>
											<option value="<?php echo($listCategories["id"]); ?>"><?php echo($listCategories["name"]); ?></option>
											<?php
										}
									}
									
									$listCategoriesRequest->closeCursor();
									?>
								</select>
							</div>
							<div class="col-md-4 col-sm-12">
								<label for="image">Image principale</label>
								<select class="custom-select" name="image">
									<?php
									
									$listImagesRequest = $db->query("SELECT id, name FROM images");
									
									while ($listImages = $listImagesRequest->fetch()) {
										if ($listImages["id"] == $image) {
											?>
											<option value="<?php echo($listImages["id"]); ?>" selected><?php echo($listImages["name"]); ?></option>
											<?php
										}
										else {
											?>
											<option value="<?php echo($listImages["id"]); ?>"><?php echo($listImages["name"]); ?></option>
											<?php
										}
									}
									
									$listImagesRequest->closeCursor();
									?>
								</select>
							</div>
						</div>
						<div class="mb-2">
							<label for="content">Contenu en HTML</label>
							<textarea class="form-control" name="content" style="min-height: 16rem; max-height: 32rem;"><?php echo htmlspecialchars($content); ?></textarea>
						</div>
						<div class="row">
							<button class="btn btn-success" type="submit"><i class="fas fa-file-signature"></i> Poster l'article</button>
							<div class="custom-control custom-checkbox ml-2 mt-2">
								<input type="checkbox" class="custom-control-input" name="publish" id="publish" checked />
								<label class="custom-control-label" for="publish">Publier l'article</label>
							</div>
						</div>
					</form>
				</div>
				<div class="col-sm-12 col-md-3">
					<p class="font-weight-bold fs-4">Aide pour l'édition</p>
					<p><code>&ltp&gt&lt/p&gt</code> pour un paragraphe<br />
					<code>&ltimg src="img/monimage.jpg" /&gt</code> pour une image<br />
					<code><b>&ltb&gt</b></code>, <code><i>&lti&gt</i></code>, <code><u>&ltu&gt</u></code><br />
					<code><span style="color: #00f;">&ltspan style="color: #00f / blue;"&gt</span></code> pour un peu de couleur...<br />
					<code>&lth1&gt</code>, <code>&lth2&gt</code>, ... <code>&lth6&gt</code> pour mettre quelques titres...<br />
					<code>&ltul&gt</code> / <code>&ltol&gt</code> pour liste ordonnée (ol) ou pas (ul)...<br />
					<code>&ltli&gt</code> et ses élements...<br />
					Un peu de <code>&ltcode&gt</code>, de <kbd>&ltkbd&gt</kbd> pour finir en beauté :)</p>
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
