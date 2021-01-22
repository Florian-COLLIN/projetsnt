<?php
session_start();


$file_path = "includes/mysql-config.json";

function open_json($file_path){
    if( file_exists($file_path) ){
        $texte = file_get_contents($file_path);
        $data = json_decode($texte, true);
    }
    else{
		echo("File doesn't exists : ".$file_path);
        $data=[];
    }
    return $data;
}

$data_account = open_json($file_path);

$pseudo = $data_account["pseudo"];
$password = $data_account["password"];
$db_name = $data_account["db-name"];
$port = $data_account["port"];

try {
	$db = new PDO("mysql:host=localhost;dbname=" . $db_name . ";port=" . $port . ";charset=utf8", $pseudo, $password);
}

catch(Exception $e) {
	die("Error : " . $e->getMessage());
}

if (isset($_COOKIE["logged"]) and $_COOKIE["logged"] = true) {
	$_SESSION["logged"] = true;
	$_SESSION["user-id"] = $_COOKIE["user-id"];
	
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
}
?>
