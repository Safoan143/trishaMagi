<?php

include "../database/db.php";

$titel = $_REQUEST['titel'];
$about_img = $_FILES['image'];
$description = $_REQUEST['details'];
$video_link = $_REQUEST['Video_link'];

// print_r($_FILES);

$extension = pathinfo($about_img['name'])['extension'];
$fileName = "About-". uniqid() . ".$extension";

// print_r($fileName);
if(!is_dir("../uplodes/about")){
    mkdir("../uplodes/about");
}

$Uploded_file = move_uploaded_file($about_img['tmp_name'],"../uplodes/about/$fileName");

if($Uploded_file){
    // move
    $query = "INSERT INTO about( titel, image, details, Video_link) VALUES ('$titel','$fileName','$description','$video_link')";
    $res = mysqli_query($connected, $query);

    header("location: ../backend/about.php");

}
?>