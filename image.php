<?php

include("includes/init.php");

header("Content-type: image/jpeg");

if(!isset($_GET["id"]) || !is_int($_GET["id"])) {
	exit;
}

else {
	$id = $_GET["id"];
}

$request = $db->prepare("SELECT * FROM images WHERE id=:id");
$request->execute(array(
	"id" => $id
));

$img = $request->fetch()
?><img src="images/<?php$img['name'];?>" class="img" alt="" /><?php

$img->closeCursor();

?>
