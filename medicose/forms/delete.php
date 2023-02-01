<?php

$con=mysqli_connect("localhost","root","","HMS");
if ($con->connect_error) {
    die("Connection failed: " 
        . $con->connect_error);
}

//this is the id to be removed. we are requesting this from html form

$idee=$_REQUEST['id'];


//this is the query

$res=$con->query("DELETE FROM `patient`WHERE `id`=$idee");

if($res){
    echo 'Deleted Successfully';
}
else{
    echo 'failure';
}

?>