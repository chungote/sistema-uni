<?php

    require('../class/alumno.php');
    $alumno = new alumno;
    
    $usuario = $_POST["usuario"];
    $claveA = $_POST["claveA"];
    $claveN = $_POST["clave"];
    
    $rs = $alumno->cambiarClave($usuario,$claveA,$claveN);
    
    if($rs = true){
        echo "
        <script language='JavaScript'> alert('La contraseña se cambio correctamente'); </script>";
        @ session_start();
        $_SESSION["user"] = "";
        $_SESSION["nivel_user"] = "";
		$_SESSION["id"] = "";
		$_SESSION["nombre"] = "";
        @ session_destroy();
        echo "<meta http-equiv='Refresh' content='0;URL=../../index.php'/>";
    }

?>