<?php
// echo 'Button clicked';
$con=mysqli_connect("localhost","root","","HMS");

$id=$_REQUEST['id'];


$res=$con->query("SELECT * FROM patient");

foreach($res as $patient){

    if($patient['id']==$id){

        echo "<br>";
        echo $patient['id'];
        echo "<br>";
        echo $patient['name'];
        echo "<br>";
        echo $patient['sex'];
        echo "<br>";
        echo $patient['email'];
        echo "<br>";
        echo $patient['doa'];
        echo "<br>";
        echo $patient['phone'];
        echo "<br>";
        echo $patient['department'];
        echo "<br>";
        echo $patient['age'];
        echo "<br>";
        echo $patient['department'];
}
}
?>