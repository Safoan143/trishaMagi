<?php
// print_r($_FILES);
include "../database/db.php";

$titel = $_REQUEST['titel'];
$details = $_REQUEST['details'];
$items = $_REQUEST['item'];
$price = $_REQUEST['price'];
$itemImg = $_FILES['food_imgs'];

$extension = pathinfo($itemImg['name'])['extension'];
$fileName = "Food-". uniqid() . ".$extension";
// print_r($fileName);

if(!is_dir("../uplodes/foods")){
    mkdir("../uplodes/foods");
}

$Uploded_file = move_uploaded_file($itemImg['tmp_name'],"../uplodes/foods/$fileName");

if($Uploded_file){

    $query = "INSERT INTO foods(item_id, titel, details, price, food_imgs) VALUES ('$items','$titel','$details','$price','$fileName')";

    $res = mysqli_query($connected,$query);

    header("location: ../backend/addFooditem.php");
}

?>