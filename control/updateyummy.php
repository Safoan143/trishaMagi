<?php
session_start();
include "../database/db.php";
$id = $_REQUEST['id'];
$titel = $_REQUEST['titel'];
$details = $_REQUEST['detail'];
$btn = $_REQUEST['btn'];

    $query = "UPDATE yummys SET titel='$titel',detail='$details',button='$btn' WHERE id = '$id'";

    $result = mysqli_query($connected, $query);
    $_SESSION['mgs'] = "Successfully update";
    header("Location: ../backend/allYumms.php");


?>
