<?php
// echo 'Button clicked';
$con=mysqli_connect("localhost","root","","HMS");

$id=$_REQUEST['id'];


$res=$con->query("SELECT * FROM patient");

foreach($res as $patient){

    if($patient['id']==$id){
        
    }
}
?>