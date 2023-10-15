<?php
// print_r($_FILES);
include "../database/db.php";

$titel_one = $_REQUEST['titel_one'];
$detail_one = $_REQUEST['detail_one'];
$titel_two = $_REQUEST['titel_two'];
$detail_two = $_REQUEST['detail_two'];
$titel_three = $_REQUEST['titel_three'];
$detail_three = $_REQUEST['detail_three'];



    $query = "INSERT INTO boxes(titel_one, detail_one, titel_two, detail_two, titel_three, detail_three) VALUES ('$titel_one','$detail_one','$titel_two','$detail_two','$titel_three','$detail_three')";

    $res = mysqli_query($connected,$query);

    header("location: ../backend/Box.php");


?>