<?php
include("includes/init.php");

$password = sha1($_POST["password"]);

$search = $db->prepare("SELECT * FROM users WHERE username = :username AND password = :password");
$search->execute(array(
	"username" => $_POST["username"],
	"password" => $password
));

$verif = $search->fetch();

if(!$verif) {
	header("Location: login.php?type=connection");
}

else {
	$_SESSION["logged"] = true;
	$_SESSION["user-id"] = $verif["id"];
	$_SESSION["email"] = $email;
	
	$searchWriter = $db->prepare("SELECT * FROM writers WHERE user = :user");
	$searchWriter->execute(array(
		"user" => $_SESSION["user-id"]
	));
	
	$writer = $searchWriter->fetch();
	
	if($writer) {
		$_SESSION["writer"] = true;
	}
	
	$searchAdmin = $db->prepare("SELECT * FROM admins WHERE user = :user");
	$searchAdmin->execute(array(
		"user" => $_SESSION["user-id"]
	));
	
	$admin = $searchAdmin->fetch();
	
	if($admin) {
		$_SESSION["admin"] = true;
	}
	
	if(isset($_POST["cookiesLogin"])) {
		setcookie("logged", true, time()+(30*86400));
		setcookie("loginId", $_SESSION["user-id"], time()+(30*86400));
	}
	
	header("Location: index.php");
}

$search->closeCursor();
?>
