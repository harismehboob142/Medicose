<?php
// echo 'Button clicked';
$con=mysqli_connect("localhost","root","","HMS");

$id=$_REQUEST['id'];
$name=$_REQUEST['name'];


$res=$con->query("SELECT * FROM doctor");

foreach($res as $doctor){

    if($doctor['id']==$id){

        echo "<br>";
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
        echo "<br>";
        echo $doctor['type'];
        echo "<br>";
        echo $doctor['email'];
        echo "<br>";

}
if($doctor['name']==$name){

    echo "<br>";
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
    echo "<br>";
    echo $doctor['type'];
    echo "<br>";
    echo $doctor['email'];
    echo "<br>";


}
}
?>