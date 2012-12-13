<?php
session_start();
require_once('../class/alumno.php');

$nombre=$_POST["nombre"];
$ape=$_POST["apellidos"];
$sex=$_POST["sexo"];
$dni=$_POST["dni"];
$fnac=$_POST["fecha"];
$dir=$_POST["direccion"];
$tel=$_POST["tel_fijo"];
$celu=$_POST["celular"];
$mail=$_POST["email"];

$alumno = new alumno;
$rs_insertar = $alumno->insertar($nombre, $ape,$sex,$dni,$fnac,$dir,$tel,$celu,$mail);

if($rs_insertar=true)
{
    echo "
        <script language='JavaScript'> alert('El registro se guardo correctamente'); </script>
    ";
    echo "<meta http-equiv='Refresh' content='0;URL=../../index.php?f=alumno'/>";
}
    
else
{
    echo "
        <script language='JavaScript'> alert('Se produjo un error al insertar los datos'); </script>
    ";
    echo "<meta http-equiv='Refresh' content='0;URL=../../index.php?f=alumno'/>";
}
    
?>