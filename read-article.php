<?php
include("includes/init.php");

$id = $_GET["id"];

$infosRequest = $db->prepare("SELECT *
FROM articles, categories WHERE id = :id
INNER JOIN articles
ON articles.main-category = categories.name");
$infosRequest->execute(array(
	"id" => $id;
));

while ($infosArticle = $infosRequests->fetch()) {
	$title = $infosArticle["title"];
	$author = $infosArticle["author"];
	$publicationDate = $infosArticle["date"];
	$publicationTime = $infosArticle["time"];
	$mainCategoryId = $infosArticle["main-category"];
	$mainCategoryName = $infosArticle["name"];
}

$infosRequests->closeCursor();
?>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title>Le Point K · <?php echo($title); ?></title>
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
						<li class="breadcrumb-item"><a href="category.php?id=<?php echo($mainCategoryId); ?>"> <?php echo($mainCategoryName); ?></a></li>
						<li class="breadcrumb-item active" aria-current="page"><?php echo($title); ?></li>
					</ol>
				</nav>
				<h2 class="font-weight-bold">Article</h2>
			</div>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-sm-12 mb-4">
					<h3 class="font-weight-bold"></h3>
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
