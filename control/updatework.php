<?php
session_start();
include "../database/db.php";
$id = $_REQUEST['id'];
$clients = $_REQUEST['clients'];
$projects = $_REQUEST['projects'];
$supports = $_REQUEST['supports'];
$workers = $_REQUEST['workers'];


 $query = "UPDATE workss SET clients='$clients',projects='$projects',supports='$supports',workers='$workers' WHERE id = '$id'";

$result = mysqli_query($connected, $query);
$_SESSION['mgs'] = "Successfully update";
header("Location: ../backend/allWorks.php");



?>