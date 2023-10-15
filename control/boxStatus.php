<?php
include '../database/db.php';

$id = $_REQUEST['id'];

$query = "UPDATE boxes SET ststus = 0";
$result = mysqli_query($connected,$query);

$query = "UPDATE boxes SET ststus = 1 WHERE id = '$id'";
$reselt = mysqli_query($connected,$query);

header("location:../backend/allBox.php");

?>