<?php
// print_r($_FILES);
include "../database/db.php";

$clients = $_REQUEST['clients'];
$projects = $_REQUEST['projects'];
$supports = $_REQUEST['supports'];
$workers = $_REQUEST['workers'];




    $query = "INSERT INTO workss(clients, projects, supports, workers) VALUES ('$clients','$projects','$supports','$workers')";

    $res = mysqli_query($connected,$query);

    header("location: ../backend/Work.php");


?>