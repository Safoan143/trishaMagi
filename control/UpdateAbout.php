<?php
session_start();
include "../database/db.php";
$id = $_REQUEST['id'];
$titel = $_REQUEST['titel'];
$details = $_REQUEST['details'];
$Vdlink = $_REQUEST['Video_link'];
$About_img = $_FILES['image'];

// echo $id;
// exit;
if($About_img['size'] > 0){

    $extension = pathinfo($About_img['name'])['extension'];
    $fileName = "About-". uniqid() . ".$extension";
    $path = "../uplodes/about";
    if (!is_dir($path)) {
        mkdir($path);

}
$uplode = move_uploaded_file($About_img['tmp_name'], "../uplodes/about/" . $fileName);
     if($uplode){

        $query = "SELECT image FROM about WHERE id = '$id'";
        $res = mysqli_query($connected, $query);
        $oldBannerName = mysqli_fetch_assoc($res);
        $path = "../uplodes/about/" . $oldBannerName['image'];
        // print_r($oldBannerName);

        if(file_exists($path)){
          unlink($path);
        }

        $query = "UPDATE about SET titel='$titel',image='$fileName',details='$details',Video_link='$Vdlink' WHERE id = '$id'";
        $result = mysqli_query($connected, $query);
        $_SESSION['mgs'] = "Successfully update";
        header("Location: ../backend/allAbout.php");
        // var_dump($result);

     }

}else{

    $query = "UPDATE about SET titel='$titel',details='$details',Video_link='$Vdlink' WHERE id = '$id'";
    $result = mysqli_query($connected, $query);
    $_SESSION['mgs'] = "Successfully update";
    header("Location: ../backend/allAbout.php");

}
?>
