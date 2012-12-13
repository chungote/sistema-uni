<link rel="stylesheet" type="text/css" href="../../../css/tabla1.css"/>
<?php
   	require('../class/docente.php');
	$docente = new docente;
	$id = $_GET["id"];
	
	$rs = $docente->cursos_docentes($id);
?>