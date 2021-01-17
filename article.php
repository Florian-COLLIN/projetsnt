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
WHERE article = :id
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
				<?php
				
				if (!isset($_SESSION["writer"]) or !$_SESSION["writer"]) {
					?>
					<h2 class="font-weight-bold"><?php echo($title); ?></h2>
					<?php
				}
				
				else {
					?>
					<h2 class="font-weight-bold"><?php echo($title); ?>
					<a href="edit-article.php?id=<?php echo($id); ?>" class="small"><i class="fas fa-pen"></i></a>
					<a href="article-history.php?id=<?php echo($id); ?>" class="small"><i class="fas fa-history"></i></a>
					</h2>
					<?php
				}
				
				?>
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
			<section class="row">
				<article class="col-md-12 col-lg-9 mb-4 text-justify">
					<?php echo($content); ?>
				</article>
				<aside class="col-md-12 col-lg-3 mb-4">
					<h5 class="font-weight-bold">Derniers articles dans la catégorie <?php echo($mainCategoryName); ?></h5>
					<?php
						$articleListRequest = $db->prepare("SELECT a.id, a.title, a.author, a.date, a.time, a.mainCategory, c.name, c.color, i.name imageName
						FROM articles a
						INNER JOIN categories c
						ON a.mainCategory = c.id
						INNER JOIN images i
						ON a.image = i.id
						WHERE a.mainCategory = :mainCategory
						ORDER BY date DESC, time DESC
						LIMIT 3");
						$articleListRequest->execute(array(
							"mainCategory" => $mainCategoryId
						));
						
						while($articleList = $articleListRequest->fetch()) {
							$articleContentRequest = $db->prepare("SELECT *
							FROM `articles-contents`
							WHERE article = :id
							ORDER BY date DESC, time DESC
							LIMIT 1");
							$articleContentRequest->execute(array(
								"id" => $articleList["id"]
							));
							
							while($articleContent = $articleContentRequest->fetch()) {
								?>
								<div class="card bg-dark text-white card-article" style="border-color: #<?php echo($articleList['color']); ?>;">
									<img src="img/<?php echo($articleList['imageName']); ?>" class="card-img" alt="...">
									<div class="card-img-overlay" style="border-bottom: 8px solid #<?php echo($articleList['color']); ?>;">
										<h5 class="card-title"><?php echo($articleList["title"]); ?></h5>
											<div class="card-article-content">
											<div class="card-text"><?php echo($articleContent["content"]); ?></div>
											<div class="card-text"><a href="categories.php?id=<?php echo($articleList['mainCategory']); ?>" class="badge badge-pill" style="background-color: #<?php echo($articleList['color']); ?>;"><?php echo($articleList["name"]); ?></a></div>
											<div class="card-text mt-auto"><a href="article.php?id=<?php echo($articleList['id']); ?>" class="btn btn-sm btn-secondary">Lire la suite... <i class="fas fa-angle-right"></i></a></div>
											<div class="card-text small">Publié le <?php echo($articleList["date"]); ?> à <?php echo($articleList["time"]); ?></div>
										</div>
									</div>
								</div>
								<?php
							}
							
							$articleContentRequest->closeCursor();
						}
						
						$articleListRequest->closeCursor();
						?>
				</aside>
			</section>
		</div>
		
		<!-- Footer -->
		<?php include("includes/footer.php"); ?>
		
		<script src="jquery/jquery.slim.min.js"></script>
		<script src="bootstrap/js/bootstrap.bundle.min.js"></script>
		<script src="includes/scripts.js"></script>
	</body>
</html>
