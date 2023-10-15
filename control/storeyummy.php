<?php

include "../database/db.php";

$titel = $_REQUEST['titel'];
$description = $_REQUEST['detail'];
$button = $_REQUEST['btn'];

    $query = "INSERT INTO yummys(titel, detail, button) VALUES ('$titel','$description','$button')";

    $res = mysqli_query($connected, $query);

    header("location: ../backend/yummy.php");


?>