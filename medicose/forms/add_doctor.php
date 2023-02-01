<?php

$con=mysqli_connect("localhost","root","","HMS");
if ($con->connect_error) {
    die("Connection failed: " 
        . $con->connect_error);
}


$idee=$_REQUEST['id'];
$name=$_REQUEST['name'];
$phone=$_REQUEST ['phone'];
// $phone=$_REQUEST['phone'];
$date=$_REQUEST['date'];
$department=$_REQUEST['department'];
$type=$_REQUEST['type'];
$address=$_REQUEST['address'];
$password=$_REQUEST['password'];
$email=$_REQUEST['email'];
// $age=$_REQUEST['age'];


$res=$con->query("SELECT * FROM `doctor`");

$res=$con->query("INSERT INTO `doctor`(`id`,`name`,`contact`,`address`,`department`,`password`,`type`,`email`)
// VALUES ('$idee','$name','$phone','$address','$department','$password','$type','$email')");

if($res){
    echo 'success';
}
else{
    echo 'failure';
}

?>