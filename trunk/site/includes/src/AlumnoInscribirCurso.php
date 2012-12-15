<?php
session_start();
    require('../class/alumno.php');
    $alumno = new alumno;
    
if(isset($_POST["curso"]))
{
    foreach($_POST["curso"] as $cursos)
    {
        $alumno->inscribirCurso($_SESSION["user"],$cursos);
    }
    
    echo "El registro de cursos se realizo correctamente";
}
else
{
    echo "Se produjo un error en el proceso";
}

?>