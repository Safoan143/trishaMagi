<?php
 $titel = $_REQUEST['titel'];
include "../database/db.php";
 $query = "INSERT INTO items(titel) VALUES ('$titel')";
$res =  mysqli_query($connected, $query);
header('location: ../backend/addFood.php');


?>