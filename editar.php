<?php
require('conexion.php');

//variable que almacena lo que el usuario envia desde url http
$nuevaprof = $_GET['nuevaprof'];
$reg = $_GET['id'];


//variable para consultar las tablas mysql
$sql = "UPDATE cursofullstack SET profesion ='$nuevaprof' WHERE id = '$reg' ";

//enviar datos: conexion + sentencia
mysqli_query($conexion, $sql);

//direccionamiento de rutas
header('Location: mostrar.php');

?>
