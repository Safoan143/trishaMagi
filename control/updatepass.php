<?php
// print_r($_REQUEST);
session_start();
include "../database/db.php";
// print_r($_SESSION['user']);
// exit();
$id = $_SESSION['user']['id'];
$oldpassword = $_REQUEST['old_pass'];
// print_r($oldpassword);
// exit();
$password = $_REQUEST['Password'];
$confirmpassword = $_REQUEST['confirm_pass'];
$encPass = password_hash($password, PASSWORD_BCRYPT);

$query = "SELECT * FROM users WHERE id = '$id'";
$result = mysqli_query($connected,$query);
$user = mysqli_fetch_assoc($result);
// print_r($user);

$verifyd = password_verify($oldpassword, $user['password']);
$errors =[];

// 
if($verifyd){


    // 
    if($password==$confirmpassword){
        // password update

        $query = "UPDATE users SET password='$encPass' WHERE id = '$id'";
        $result = mysqli_query($connected , $query);
        header("Location: ../backend/profile.php");
        // var_dump($result);
    }
}else{
    $errors['old_error'] = "old password did not match";
    $_SESSION['update_error'] = $errors;
    header("Location: ../backend/profile.php");
}
?>