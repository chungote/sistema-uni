<?php

class Usuario{

    function __construct(){
    }

function logear($tuser, $user, $pass){
    include("../conexion.php");
    $rs_logear= $cn->query("CALL paLogin ('".$tuser."', '".$user."', '".$pass."')");
    $row_logear = $rs_logear->num_rows;
    $row = $rs_logear->fetch_array(MYSQLI_ASSOC);
	
    if($row_logear==0)
    {
        header("Location: ../../index.php");
    }
    else{
        header("Location: ../../index.php");
        $_SESSION["user"] = $user;
        $_SESSION["usuarioNivel"] = $tuser."";
		$_SESSION["id"] = $row["id"];
		$_SESSION["nombre"] = $row["nombre_completo"];
        $_SESSION["foto"] = $row["imagen"];
    }
	
    return $rows;
}

	function logout($duser){	

		$_SESSION["s_user"]="";
		session_destroy();
		header('Location: ../../index.php');
	}
    
    function cambiarFoto($nombreImagen,$tipoImagen,$idusuario,$nivel){
        require ('Imagen.php');
        include("includes/conexion.php");
        $imagen = new imagen;
        
        $subeImg = $imagen->subirImagen($nombreImagen,$idusuario);
        $crearThumb = $imagen->crear_thumb($nombreImagen,$idusuario,$tipoImagen);
        
        $rsImg = $cn->query("CALL paCambiarFoto('$nivel', '$idusuario', '$nombreImagen')");
        
}
}
?>