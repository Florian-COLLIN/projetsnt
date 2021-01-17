<?php
include("includes/init.php");

$_SESSION["currentPage"] = "index.php";

$id = $_GET["id"];

$infosCategoryRequest = $db->prepare("SELECT * FROM categories WHERE id = :id");
$infosCategoryRequest->execute(array(
	"id" => $id
));

while ($infosCategory = $infosCategoryRequest->fetch()) {
	$name = $infosCategory["name"];
	$color = $infosCategory["color"];
}
?>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title>Le Point K · <?php echo($name); ?></title>
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
				<h2 class="font-weight-bold">Articles dans la catégorie <?php echo($name); ?></h2>
			</div>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-sm-12 mb-4">
					<h3 class="font-weight-bold mb-4">Articles récents</h3>
					<div class="row">
						<?php
						$articleListRequest = $db->prepare("SELECT a.id, a.title, a.author, a.date, a.time, a.mainCategory, c.name, c.color, i.name imageName
						FROM articles a
						INNER JOIN categories c
						ON a.mainCategory = c.id
						INNER JOIN images i
						ON a.image = i.id
						WHERE a.mainCategory = :mainCategory
						ORDER BY date DESC, time DESC
						LIMIT 8");
						$articleListRequest->execute(array(
							"mainCategory" => $id
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
