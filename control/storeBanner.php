<?php
// print_r($_FILES);
include "../database/db.php";

$titel = $_REQUEST['titel'];
$details = $_REQUEST['details'];
$ctatitel = $_REQUEST['cta_titel'];
$CtaLink = $_REQUEST['cta_link'];
$Vdlink = $_REQUEST['Video_link'];
$bannerImg = $_FILES['image'];

$extension = pathinfo($bannerImg['name'])['extension'];
$fileName = "Banner-". uniqid() . ".$extension";
// print_r($fileName);

if(!is_dir("../uplodes/Banners")){
    mkdir("../uplodes/Banners");
}

$Uploded_file = move_uploaded_file($bannerImg['tmp_name'],"../uplodes/Banners/$fileName");

if($Uploded_file){

    $query = "INSERT INTO banner(titel, details, cta_titel, cta_link, Video_link, image ) VALUES ('$titel', '$details','$ctatitel', '$CtaLink', '$Vdlink', '$fileName')";

    $res = mysqli_query($connected,$query);

    header("location: ../backend/banner.php");
}

?>