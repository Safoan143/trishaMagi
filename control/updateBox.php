<?php
session_start();
include "../database/db.php";
$id = $_REQUEST['id'];
$titel_one = $_REQUEST['titel_one'];
$detail_one = $_REQUEST['detail_one'];
$titel_two = $_REQUEST['titel_two'];
$detail_two = $_REQUEST['detail_two'];
$titel_three = $_REQUEST['titel_three'];
$detail_three = $_REQUEST['detail_three'];

    $query = "UPDATE boxes SET titel_one='$titel_one',detail_one='$detail_one',titel_two='$titel_two',detail_two='$detail_two',titel_three='$titel_three',detail_three='$detail_three' WHERE id = '$id'";

    $result = mysqli_query($connected, $query);
    $_SESSION['mgs'] = "Successfully update";
    header("Location: ../backend/allBox.php");


?>