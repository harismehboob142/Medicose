<?php
// echo 'Button clicked';
$con=mysqli_connect("localhost","root","","HMS");


$res=$con->query("SELECT * FROM doctor");

foreach($res as $doctor){

    
        echo $doctor['id'];
        echo "<br>";
        echo $doctor['name'];
        echo "<br>";
        echo $doctor['contact'];
        echo "<br>";
        echo $doctor['address'];
        echo "<br>";
        echo $doctor['department'];
        echo "<br>";
        echo $doctor['password'];
}



?>
