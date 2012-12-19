<?php

include("../conexion.php");

$data  = explode("-",$_POST['id']);

$campo = $data[0]; // nombre del campo
$id    = $data[1]; // id del registro
$value = $_POST['value']; // valor por el cual reemplazar

$rN = $cn->query("UPDATE inscripcion_curso SET promedio='$value' WHERE idalumno='$id'");
?>