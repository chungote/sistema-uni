<?php
	require('../class/docente.php');
    $docente = new docente;
    $id = $_GET["id"];
    $datos = $docente->listarID($id);
?>
<link rel="stylesheet" type="text/css" href="../../../css/tdatos.css"/>
<table class="tdatos">
<tr>
<td class="cabeceras">Nombre: </td>
<td colspan="3"><?php echo $datos["nombre"];?></td>
</tr>
<tr>
<td class="cabeceras">DNI: </td>
<td><?php echo $datos["dni"];?></td>
<td class="cabeceras">Fecha Nacimiento: </td>
<td><?php echo $datos["fecha_nacimiento"];?></td>
</tr>
<tr>
<td class="cabeceras">Direccion: </td>
<td colspan="3"><?php echo $datos["direccion"];?></td>
</tr>
<tr>
<td class="cabeceras">Telefono: </td>
<td><?php echo$datos["telefono_fijo"];?></td>
<td class="cabeceras">Celular</td>
<td><?php echo $datos["celular"];?></td>
</tr>
<tr>
<td class="cabeceras">E-mail</td>
<td colspan="3"><?php echo $datos["email"];?></td>
</tr>
</table>