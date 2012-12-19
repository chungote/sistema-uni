<?php
session_start();
    require('../class/usuario.php');
    $usuario = new Usuario;
    
    $nombreImagen = $_FILES['imagen']['name']; 
    $tipoImagen = $_FILES['imagen']['type'];
    $idusuario = $_SESSION["user"];
    $nivel = $_SESSION["usuarioNivel"];
    $origen = $_FILES['imagen']['tmp_name'];

    $cambiaFoto = $usuario->cambiarFoto($nombreImagen,$tipoImagen,$idusuario,$nivel,$origen);
    
    echo "<script language='JavaScript'> alert('La foto se cambio correctamente'); </script>";
        
        echo "<meta http-equiv='Refresh' content='0;URL=../../index.php'/>";

?>