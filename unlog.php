<?php
session_start();

$_SESSION["logged"] = false;
$_SESSION["user-id"] = NULL;
$_SESSION["email"] = "";
$_SESSION["writer"] = false;
$_SESSION["admin"] = false;

if(isset($_COOKIE["logged"])) {
	setcookie("logged", false, time()+(30*86400));
}

header("Location: index.php");
?>
