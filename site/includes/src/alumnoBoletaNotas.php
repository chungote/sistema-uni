<?php
	session_start();
    require('../class/alumno.php');
    include '../conexion.php';
    $alumno = new alumno;
    $id = $_GET["id"];
    $semestre = $_GET["semestre"];
    $datosBasicos = $alumno->datosBasicosBN($id,$semestre);

    $rsPromP = $cn->query("SELECT getPromedioPonderado('$id','$semestre') AS promediop");
    $rstotalC = $cn->query("SELECT getTotalCreditosXSemestre('$id','$semestre') AS 'totalCreditos'");
    $rowPromP = $rsPromP->fetch_array(MYSQLI_ASSOC);
    $rowtotalC = $rstotalC->fetch_array(MYSQLI_ASSOC);
?>
<!DOCTYPE HTML>
<head>
	<meta http-equiv="content-type" content="text/html" />
	<meta name="author" content="tibiyacks" />
<link rel="stylesheet" type="text/css" href="../../../css/tabla1.css"/>
<link rel="stylesheet" type="text/css" href="../../../css/tboletaNotas.css"/>
</head>

<body>

<table class="cabeceraboleta">
    <tr>
        <th colspan="4">BOLETA DE NOTAS</th>
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
        <th>Ciclo</th>
        <th>Cr&eacute;dito</th>
        <th>Vez</th>
        <th>Promedio</th>
    </tr>
    <?php
	   $alumno->boletaNotas($id,$semestre);
    ?>
</table>
<table class="pieboletas">
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