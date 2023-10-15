<?php 
include '../database/db.php';

$id = $_REQUEST['id'] ;
$query = "SELECT image FROM banner WHERE $id = '$id'";

$result = mysqli_query($connected,$query);
$bannerImg = mysqli_fetch_assoc($result);



$path = "../uplodes/Banners/".$bannerImg['image'];
print_r(file_exists($path));

if(file_exists($path)){
    unlink($path);
}

$query = "DELETE FROM banner WHERE id = '$id'";
$success = mysqli_query($connected,$query);
header("location: ../backend/allBanner.php");