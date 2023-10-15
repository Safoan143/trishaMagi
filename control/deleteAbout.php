<?php 
include '../database/db.php';

$id = $_REQUEST['id'] ;
$query = "SELECT image FROM about WHERE $id = '$id'";

$result = mysqli_query($connected,$query);
$About_img = mysqli_fetch_assoc($result);



$path = "../uplodes/about/".$About_img['image'];
print_r(file_exists($path));

if(file_exists($path)){
    unlink($path);
}

$query = "DELETE FROM about WHERE id = '$id'";
$success = mysqli_query($connected,$query);
header("location: ../backend/allAbout.php");