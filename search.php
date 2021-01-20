<?php
include("includes/init.php");

$search = $_POST["search"];

$searchArticlesTitlesRequest = $db->prepare("SELECT * FROM articles WHERE title LIKE :search");
$searchArticlesTitlesRequest->execute(array(
	"search" => ("%" . $search . "%")
));

while($searchArticlesTitles = $searchArticlesTitlesRequest->fetch()) {
	
}

$searchArticlesTitlesRequest = $db->prepare("SELECT * FROM `articles-contents` WHERE content LIKE :search");
$searchArticlesTitlesRequest->execute(array(
	"search" => ("%" . $search . "%")
));

while($searchArticlesTitles = $searchArticlesTitlesRequest->fetch()) {
	
}
?>
