<?php
	require('../includes/class/alumno.php');
    $alumno = new alumno;
    $id = $_GET["id"];
    $datos = $alumno->listarID($id);
?>
<link rel="stylesheet" type="text/css" href="../../css/tdatos.css"/>
<form method="post" accept-charset="">
<table class="tdatos">
<tr>
<td class="cabeceras">Nombre: </td>
<td colspan=""><input name="nombre" size="10" value="<?php echo $datos["nombre"];?>"/></td>
<td class="cabeceras">Apellidos: </td>
<td colspan=""><input name="apellidos" size="10" value="<?php echo $datos["apellidos"];?>"/></td>
</tr>
<tr>
<td class="cabeceras">DNI: </td>
<td><input name="dni" size="10" value="<?php echo $datos["dni"];?>" /></td>
<td class="cabeceras">Fecha Nacimiento: </td>
<td><input name="fechan" size="10" value="<?php echo $datos["fecha_nacimiento"];?>" /></td>
</tr>
<tr>
<td class="cabeceras">Direccion: </td>
<td colspan="3"><input name="direccion" value="<?php echo $datos["direccion"];?>" /></td>
</tr>
<tr>
<td class="cabeceras">Telefono: </td>
<td><input name="telefono" size="10" value="<?php echo$datos["telefono_fijo"];?>" /></td>
<td class="cabeceras">Celular</td>
<td><input name="celular" size="10" value="<?php echo $datos["celular"];?>" /></td>
</tr>
<tr>
<td class="cabeceras">E-mail</td>
<td colspan="3"><input name="email" size="19" value="<?php echo $datos["email"];?>" /></td>
</tr>
<tr>
	<td><input type="sumbit" class="button_login" value="GUARDAR" /></td>
	<td><input type="reset" class="button_login" value="LIMPIAR" /></td>
</tr>
</table>
</form>