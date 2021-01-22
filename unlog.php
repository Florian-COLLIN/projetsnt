<?php
session_start();

$_SESSION["logged"] = false;
$_SESSION["user-id"] = NULL;
$_SESSION["email"] = "";
$_SESSION["writer"] = false;
$_SESSION["admin"] = false;

// Faut aussi enlever les cookies qui ont pu être enregistrés
$_COOKIE["logged"] = false;

header("Location: index.php");
?>
