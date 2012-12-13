<?php
@ session_start();
$_SESSION["user"] = $user;
        $_SESSION["nivel_user"] = $tuser;
		$_SESSION["id"] = $row["id"];
		$_SESSION["nombre"] = $row["nombre_completo"];
		
session_destroy();

header("Location: ../../../index.php");
?>