<?php 
include '../database/db.php';

$id = $_REQUEST['id'] ;


$query = "DELETE FROM boxes WHERE id = '$id'";
$success = mysqli_query($connected,$query);
header("location: ../backend/allBox.php");