<?php
session_start();
require_once('includes/class/alumno.php');

$alumno = new alumno;

$lista = $alumno->listar();


?>
