<script src="../js/funciones.js" type="text/javascript"></script>

<form id="formMatricula" >
<table>
<tr>
<td>Ciclo: </td>
<td>
<select size="1" name="ciclo" id="ciclo" onchange="cargaformTabla()">
	<option value="1">I</option>
	<option value="2">II</option>
	<option value="3">III</option>
	<option value="4">IV</option>
	<option value="5">V</option>
	<option value="6">VI</option>
	<option value="7">VII</option>
	<option value="8">VIII</option>
	<option value="9">IX</option>
	<option value="10">X</option>
</select>
</td>
<td><input type="button" onclick='return enviarform("1")' value="Listar" /></td>
</tr></form>
<?php
include("includes/class/curso.php");

$curso = new curso;
$ciclo = $_GET["ciclo"];

if(isset($ciclo))
$lista = $curso->Listarxcurso($ciclo);




?>
</table>
