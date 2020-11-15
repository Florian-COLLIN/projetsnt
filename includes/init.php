<?php
session_start();

if (isset($_COOKIE["logged"]) and $_COOKIE["logged"] = true) {
	$_SESSION["logged"] = true;
}

try {
	$db = new PDO("mysql:host=localhost;dbname=le-point-k;charset=utf8", "root", "");
}

catch(Exception $e) {
	die("Error : " . $e->getMessage());
}
?>
