<?php
    require('../class/alumno.php');
    $alumno = new alumno;
    $id = $_GET["id"];
    $listacurso = $alumno->listarCursosInscritos($id);
?>