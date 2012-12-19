<?php

	require('../class/alumno.php');
    $alumno = new alumno;
    $nombre = $_POST["nombre"];
    $apellidos = $_POST["apellidos"];
    $dni = $_POST["dni"];
    $fechan = $_POST["fechan"];
    $direccion = $_POST["direccion"];
    $telefono = $_POST["telefono"];
    $celular = $_POST["celular"];
    $email = $_POST["email"];
    $id = $_POST["id"];
    
    $id = $_POST["codigo"];
    $datos = $alumno->modificar($nombre,$apellidos,$dni,$fechan,$direccion,$telefono,$celular,$email,$id);
    
    if($datos=true)
        echo "Los datos se modificaron correctamente";
    else
        echo "Se produjo un error en la operacion";
?>