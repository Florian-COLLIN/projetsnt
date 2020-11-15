<?php

try {
	$db = new PDO("mysql:host=localhost;dbname=le-point-k;charset=utf8", "root", "");
}

catch(Exception $e) {
	die("Error : " . $e->getMessage());
}

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
