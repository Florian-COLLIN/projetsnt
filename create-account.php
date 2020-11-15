<?php
include("includes/init.php");

if($_POST["password"] != $_POST["passwordConfirm"]) {
	header("Location: login.php");
}

$usernameRequest = $db->prepare("SELECT * FROM users WHERE username = :username");
$usernameRequest->execute(array(
	"username" => $_POST["username"]
));

$username = $usernameRequest->fetch();

$usernameRequest->closeCursor();

if($username) {
	header("Location: login.php");
}

else {
	if($_POST["math"] = $_SESSION["math1"] + $_SESSION["math2"]) {
		$create = $db->prepare("INSERT INTO users(username, password, realname, email) VALUES(:username, :password, :username, :email)");
		$create->execute(array(
			"username" => $_POST["username"],
			"password" => sha1($_POST["password"]),
			"email" => $_POST["email"]
		));
		$_SESSION["logged"] = true;
		$_SESSION["email"] = $_POST["email"];
		$idRequest = $db->prepare("SELECT * FROM users WHERE username = :username");
		$idRequest->execute(array(
			"username" => $_POST["username"]
		));
		while ($id = $idRequest->fetch()) {
			$_SESSION["user-id"] = $id["id"];
		}
		$idRequest->closeCursor();
		header("Location: index.php");
	}
}
?>
