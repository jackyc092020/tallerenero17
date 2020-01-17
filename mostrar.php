<?php
require('conexion.php');

$sql = "SELECT * FROM cursofullstack";

$resultado = mysqli_query($conexion, $sql);

$compis= mysqli_fetch_all($resultado);
//luego el codigo php en el codigo
//<?php foreach($compis as $compi): cerrar
//<?php endforeach; cerrar
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>cursofullstack</title>
    

</head>



<body>
    <form action="insertar.php" method="get">
    <input type="text" name="nombre">
    <input type="text" name="apellido" >
    <input type="number" name="telefono" >
    <input type="text" name="profesion" >
    <input type="text" name="tecno1" >
    <input type="text" name="tecno2" >
    <input type="text" name="tecno3" >
    <button type="submit">Añadir</button>
    </form>

<?php foreach($compis as $compi):

echo "$compi[1] $compi[2] $compi[3] <u>$compi[4]</u>";?>

<form action="editar.php" method="get">
    <input type="text" name="nuevaprof">

  <a href="editar.php?id=<?php echo $compi[0]; ?> "> <button type="submit">Modificar</button> </a>
 </form> 

 <?php echo " $compi[5] $compi[6] $compi[7] <br>"; ?>
 <a href="eliminar.php?id=<?php echo $compi[0]; ?>">X</a>
 <?php endforeach; ?>


</body>
</html>