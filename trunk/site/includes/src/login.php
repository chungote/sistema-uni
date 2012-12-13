<?php
session_start();
require_once('../class/usuario.php');

    $nivel=$_POST["nivel"];
    $usuario=$_POST["user"];
    $clave=$_POST["clave"];
    
    $user = new Usuario;
    $row= $user->logear($nivel,$usuario,$clave);
    
	
?>