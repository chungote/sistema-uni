<?php

    require('../class/usuario.php');
    $usuario = new Usuario;
    
    $nombreImagen = $_FILES['imagen']['name']; 
    $tipoImagen = $_FILES['imagen']['type'];
    $idusuario = $_SESSION["user"];
    $nivel = $_SESSION["usuarioNivel"];

    $cambiaFoto = $usuario->cambiarFoto($nombreImagen,$tipoImagen,$idusuario,$nivel);
    
    //hola

?>