<?php
    session_start();
    require('../class/alumno.php');
   
    $alumno = new alumno;
    $id = $_GET["id"];
    $semestre = $_GET["semestre"];
    $datosBasicos = $alumno->datosBasicosBN($id,$semestre);


?>
<link rel="stylesheet" type="text/css" href="../../../css/tabla1.css"/>
<link rel="stylesheet" type="text/css" href="../../../css/tboletaNotas.css"/>
<table class="cabeceraboleta">
    <tr>
        <th colspan="4">kardex</th>
    </tr>
    <tr>
        <th>Escuela: </th>
        <td><?php echo $datosBasicos["escuela"]; ?></td>
    </tr>
    <tr>
        <th>Id Alumno:</th>
        <td><?php echo $datosBasicos["idalumno"]; ?></td>
        <th>Nombre:</th>
        <td><?php echo $datosBasicos["nombre"]; ?></td>
    </tr>
    <tr>
        <th>Semestre:</th>
        <td><?php echo $datosBasicos["semestre"]; ?></td>
        <th>Ciclo:</th>
        <td><?php echo $datosBasicos["ciclo"]; ?></td>
    </tr>
</table>
<table class="bordered">
    <tr>
        <th>ID Curso</th>
        <th>Nombre Curso</th>
        <th>Creditos</th>
        <th>Vez</th>
        <th>Semestre</th>
        <th>Promedio</th>
        <th>Observacion</th>
    </tr>
    <?php
	for($i=1;$i<=9;$i++)
    {
        echo "<tr><th>CICLO ".$i."</th></tr>";
        $alumno->cursosxCicloKardex($_SESSION["user"],$i);
    }
    echo "<tr><th>CICLO A</th></tr>";
        $alumno->cursosxCicloKardex($_SESSION["user"],"A");
?>
</table>