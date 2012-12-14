<?php
	require('../class/alumno.php');
    $alumno = new alumno;
    $id = $_GET["id"];
    $datos = $alumno->listarID($id);
?>
<link rel="stylesheet" type="text/css" href="../../../css/tdatos.css"/>
<script type="text/javascript" src="../../../js/jquery-1.8.3.js"></script>
<script type="text/javascript" src="../../../js/jquery.form.js"></script>
<style type="text/css">
<!--
	#result {
	width:280px;
	padding:10px;
	border:1px solid #bfcddb;
	margin:auto;
	margin-top:10px;
	text-align:center;
}
-->
</style>
<script language="javascript">
$(document).ready(function() {
    $().ajaxStart(function() {
        $('#loading').show();
        $('#result').hide();
    }).ajaxStop(function() {
        $('#loading').hide();
        $('#result').fadeIn('slow');
    });
    $('#form, #fat, #alumnoModifica').submit(function() {
        $.ajax({
            type: 'POST',
            url: $(this).attr('action'),
            data: $(this).serialize(),
            success: function(data) {
                $('#result').html(data);
                
            }
        })
        
        return false;
    }); 
})  
</script>
<form method="post" action="alumnoModificar.php" id="alumnoModifica" name="alumnoModifica">
<input type="hidden" name="codigo" value="<?php echo $datos["idalumno"];?>" />
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
<td colspan="3"><input size="50" name="direccion" value="<?php echo $datos["direccion"];?>" /></td>
</tr>
<tr>
<td class="cabeceras">Telefono: </td>
<td><input name="telefono" size="10" value="<?php echo$datos["telefono_fijo"];?>" /></td>
<td class="cabeceras">Celular</td>
<td><input name="celular" size="10" value="<?php echo $datos["celular"];?>" /></td>
</tr>
<tr>
<td class="cabeceras">E-mail</td>
<td colspan="3"><input name="email" size="30" value="<?php echo $datos["email"];?>" /></td>
</tr>
<tr>
	<td colspan="2"><input type="submit" class="button_login" value="GUARDAR" /></td>
	<td colspan="2"><input type="button" class="button_login" value="CANCELAR" onclick="history.back()" /></td>
</tr>
</table>
<div id="result"></div>
</form>