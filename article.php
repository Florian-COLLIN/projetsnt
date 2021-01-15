<?php
include("includes/init.php");

$id = (int)($_GET["id"]);

$infosArticleRequest = $db->prepare("SELECT a.title, a.author, a.date, a.time, a.mainCategory, c.name, c.color, u.realname
FROM articles a
INNER JOIN categories c
ON a.mainCategory = c.id
INNER JOIN users u
ON a.author = u.id
WHERE a.id = :id");
$infosArticleRequest->execute(array(
	"id" => $id
));

while ($infosArticle = $infosArticleRequest->fetch()) {
	$title = $infosArticle["title"];
	$authorId = $infosArticle["author"];
	$author = $infosArticle["realname"];
	$publicationDate = $infosArticle["date"];
	$publicationTime = $infosArticle["time"];
	$mainCategoryId = $infosArticle["mainCategory"];
	$mainCategoryName = $infosArticle["name"];
}

$infosArticleRequest->closeCursor();

$_SESSION["currentPage"] = "article.php?id=" . $id;

$articleContentRequest = $db->prepare("SELECT *
FROM `articles-contents` ac
INNER JOIN users u
ON ac.author = u.id
WHERE article = 1
ORDER BY date DESC, time DESC
LIMIT 1");
$articleContentRequest->execute(array(
	"id" => $id
));

while ($articleContent = $articleContentRequest->fetch())
{
	$content = $articleContent["content"];
	$updateAuthor = $articleContent["realname"];
	$updateDate = $articleContent["date"];
	$updateTime = $articleContent["time"];
}

$articleContentRequest->closeCursor();
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
				<h2 class="font-weight-bold"><?php echo($title); ?></h2>
				<?php
				
				if ($publicationDate == $updateDate && $publicationTime == $updateTime) {
					?>
					<p class="font-italic small">Par <?php echo($author); ?>, publié le <?php echo($publicationDate); ?> à <?php echo($publicationTime); ?></p>
					<?php
				}
				
				else {
					?>
					<p class="font-italic small">Par <?php echo($author); ?>, publié le <?php echo($publicationDate); ?> à <?php echo($publicationTime); ?>, mis à jour par <?php echo($updateAuthor); ?> le <?php echo($updateDate); ?> à <?php echo($updateTime); ?></p>
					<?php
				}
				?>
			</div>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-sm-12 mb-4">
					<?php echo($content); ?>
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
