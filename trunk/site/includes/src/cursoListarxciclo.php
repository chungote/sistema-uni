<?php

include("../class/curso.php");

$curso = new curso;
$ciclo = $_GET["ciclo"];
$lista = $curso->Listarxcurso($ciclo);



?>