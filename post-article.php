<?php
include("includes/init.php");

$id = $_SESSION["currentArticleId"];

if(!isset($_SESSION["writer"]) or !$_SESSION["writer"]) {
	header("Location: index.php");
}

$published = 1;

if(!isset($_POST["publish"])) {
	$published = 0;
}

if ($id == 0) {
	$addArticle = $db->prepare("INSERT INTO `articles`(`title`, `author`, `date`, `time`, `mainCategory`, `image`, `published`) VALUES(:title, :author, NOW(), NOW(), :mainCategory, :image, :published)");
	$addArticle->execute(array(
		"title" => $_POST["title"],
		"author" => $_SESSION["user-id"],
		"mainCategory" => $_POST["mainCategory"],
		"image" => $_POST["image"],
		"published" => $published
	));
	
	$id = $db->lastInsertId();
}

else {
	$updateArticle = $db->prepare("UPDATE articles SET title = :title, mainCategory = :mainCategory, image = :image, published = :published WHERE id = :id");
	$updateArticle->execute(array(
		"id" => $id,
		"title" => $_POST["title"],
		"mainCategory" => $_POST["mainCategory"],
		"image" => $_POST["image"],
		"published" => $published
	));
}
	
$addArticleContent = $db->prepare("INSERT INTO `articles-contents`(article, content, author, date, time) VALUES(:article, :content, :author, NOW(), NOW())");
$addArticleContent->execute(array(
	"article" => $id,
	"content" => $_POST["content"],
	"author" => $_SESSION["user-id"]
));

header("Location: article.php?id=" . $id);
?>
