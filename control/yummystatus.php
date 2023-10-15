<?php
include '../database/db.php';

$id = $_REQUEST['id'];

$query = "UPDATE yummys SET status = 0";
$result = mysqli_query($connected,$query);

$query = "UPDATE yummys SET status = 1 WHERE id = '$id'";
$reselt = mysqli_query($connected,$query);

header("location:../backend/allYumms.php");

?>