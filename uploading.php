<?php
include("includes/init.php");

if (isset($_FILES["file"]) AND $_FILES["file"]["error"] == 0)
{
        if ($_FILES['file']['size'] <= 8388608)
        {
                $infosFile = pathinfo($_FILES['file']['name']);
                $uploadFiletype = $infosFile['extension'];
                $filetypesRight = array("jpg", "jpeg", "gif", "png", "svg");
                if (in_array($uploadFiletype, $filetypesRight))
                {
                        $insertIntoDbQuery = $db->prepare("INSERT INTO `images`(`name`) VALUES(:name)");
                        $insertIntoDbQuery->execute(array(
                        	"name" => $_POST["name"]
                        ));
                        move_uploaded_file($_FILES['file']['tmp_name'], 'img/' . basename($_POST["name"]));
                        echo("test");
                }
        }
}

header("Location: index.php");
?>
