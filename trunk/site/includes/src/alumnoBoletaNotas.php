<?php
	session_start();
    require('../class/alumno.php');
    include '../conexion.php';
    $alumno = new alumno;
    $id = $_GET["id"];
    $semestre = $_GET["semestre"];
    $datosBasicos = $alumno->datosBasicosBN($id,$semestre);

    $rsPromP = $cn->query("SELECT getPromedioPonderado('$idalumno','$semestre') AS promediop");
    $rstotalC = $cn->query("SELECT getTotalCreditosXSemestre('$idalumno','$semestre') AS 'totalCreditos'");
    $rowPromP = $rsPromP->fetch_array(MYSQLI_ASSOC);
    $rowtotalC = $rstotalC->fetch_array(MYSQLI_ASSOC);
?>
<!DOCTYPE HTML>
<head>
	<meta http-equiv="content-type" content="text/html" />
	<meta name="author" content="tibiyacks" />

</head>

<body>

<table>
    <tr>
        <th colspan="4">BOLETA DE NOTAS</th>
    </tr>
    <tr>
        <td>Escuela: </td>
        <td><?php echo $datosBasicos["escuela"]; ?></td>
    </tr>
    <tr>
        <td>Id Alumno:</td>
        <td><?php echo $datosBasicos["idalumno"]; ?></td>
        <td>Nombre</td>
        <td><?php echo $datosBasicos["nombre"]; ?></td>
    </tr>
    <tr>
        <td>Semestre</td>
        <td><?php echo $datosBasicos["semestre"]; ?></td>
        <td>Ciclo</td>
        <td><?php echo $datosBasicos["ciclo"]; ?></td>
    </tr>
</table>
<table>
    <tr>
        <th>ID Curso</th>
        <th>Nombre Curso</th>
        <th>Ciclo</th>
        <th>Cr&eacute;dito</th>
        <th>Vez</th>
        <th>Promedio</th>
    </tr>
    <?php
	   $alumno->boletaNotas($id,$semestre);
    ?>
</table>
<table>
    <tr>
        <td></td>
        <td>Total Creditos</td>
        <td><?php echo $rowtotalC["totalCreditos"]; ?></td>
        <td></td>
    </tr>
    <tr>
        <td></td>
        <td>Promedio Ponderado</td>
        <td><?php echo $rowPromP["promediop"]; ?></td>
        <td></td>
    </tr>
</table>
</body>
</html>