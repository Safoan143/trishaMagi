<?php 
include '../database/db.php';

$id = $_REQUEST['id'] ;


$query = "DELETE FROM yummys WHERE id = '$id'";
$success = mysqli_query($connected,$query);
header("location: ../backend/allYumms.php");