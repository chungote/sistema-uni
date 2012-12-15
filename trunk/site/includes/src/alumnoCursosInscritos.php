<link rel="stylesheet" type="text/css" href="../../../css/tabla1.css"/>

<?php
    require('../class/alumno.php');
    $alumno = new alumno;
    $id = $_GET["id"];
    $listacurso = $alumno->listarCursosInscritos($id);
?>