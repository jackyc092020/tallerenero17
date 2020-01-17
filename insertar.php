<?php
//a. conexion.php b. insertar.php c.mostrar.php desde

//hosting, usuario, contraseña, nombre BD
require('conexion.php');

//variable que almacena lo que el usuario envia desde url http
$nombre = $_GET['nombre'];
$apellido = $_GET['apellido'];
$telefono = $_GET['telefono'];
$profesion = $_GET['profesion'];
$tecno1 = $_GET['tecno1'];
$tecno2 = $_GET['tecno2'];
$tecno3 = $_GET['tecno3'];

//variable para consultar las tablas mysql
$sql= "INSERT INTO cursofullstack (nombre, apellido, telefono, profesion, tecno1_fav, tecno2_fav, tecno3_fav) 
       VALUES ('$nombre','$apellido','$telefono','$profesion','$tecno1','$tecno2','$tecno3')";

//enviar datos: conexion + sentencia
mysqli_query($conexion, $sql);

//direccionamiento de rutas
header('Location: mostrar.php');


?>