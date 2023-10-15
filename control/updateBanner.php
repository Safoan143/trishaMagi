<?php
session_start();
include "../database/db.php";
$id = $_REQUEST['id'];
$titel = $_REQUEST['titel'];
$details = $_REQUEST['details'];
$ctatitel = $_REQUEST['cta_titel'];
$CtaLink = $_REQUEST['cta_link'];
$Vdlink = $_REQUEST['Video_link'];
$bannerImg = $_FILES['image'];


// echo $id;
// exit;
if($bannerImg['size'] > 0){

    $extension = pathinfo($bannerImg['name'])['extension'];
    $fileName = "Banner-". uniqid() . ".$extension";
    $path = "../uplodes/banners";
    if (!is_dir($path)) {
        mkdir($path);

}
$uplode = move_uploaded_file($bannerImg['tmp_name'], "../uplodes/Banners/" . $fileName);
     if($uplode){

        $query = "SELECT image FROM banner WHERE id = '$id'";
        $res = mysqli_query($connected, $query);
        $oldBannerName = mysqli_fetch_assoc($res);
        $path = "../uplodes/Banners/" . $oldBannerName['image'];
        // print_r($oldBannerName);

        if(file_exists($path)){
          unlink($path);
        }

        $query = "UPDATE banner SET titel='$titel',details='$details',cta_titel='$ctatitel',cta_link='$CtaLink',Video_link='$Vdlink',image='$fileName' WHERE id = '$id'";
        $result = mysqli_query($connected, $query);
        // var_dump($result);

     }

}else{

    $query = "UPDATE banner SET titel='$titel',details='$details',cta_titel='$ctatitel',cta_link='$CtaLink',Video_link='$Vdlink' WHERE id = '$id'";
    $result = mysqli_query($connected, $query);
    $_SESSION['mgs'] = "Successfully update";
    header("Location: ../backend/allBanner.php");

}
?>
