<?php
session_start();

try {
	$db = new PDO("mysql:host=localhost;dbname=le-point-k;charset=utf8", "root", "");
}

catch(Exception $e) {
	die("Error : " . $e->getMessage());
}

$search = $db->prepare("SELECT * FROM users WHERE username = :username AND password = :password");
$search->execute(array(
	"username" => $_POST["username"],
	"password" => sha1($_POST["password"])
));

$verif = $search->fetch();

if(!$verif) {
	header("Location: login.php");
}

else {
	$_SESSION["logged"] = true;
	$_SESSION["user-id"] = $verif["id"];
	$_SESSION["email"] = $email;
	$searchWriter = $db->prepare("SELECT * FROM writers WHERE user = :user");
	$searchWriter = $db->execute(array(
		"user" => $_SESSION["user-id"]
	));
	$writer = $searchWriter->fetch();
	if($writer) {
		$_SESSION["writer"] = true;
	}
	$searchAdmin = $db->prepare("SELECT * FROM admins WHERE user = :user");
	$searchAdmin = $db->execute(array(
		"user" => $_SESSION["user-id"]
	));
	$admin = $searchAdmin->fetch();
	if($admin) {
		$_SESSION["admin"] = true;
	}
	if(isset($_POST["cookiesLogin"])) {
		setcookie("logged", true, time() + 30*86400);
	}
	header("Location: index.php");
}

$search->closeCursor();
?>
