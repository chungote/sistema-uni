<style type="text/css">
<!--
	#result {
	width:280px;
	padding:10px;
	border:1px solid #bfcddb;
	margin:auto;
	margin-top:10px;
	text-align:center;
    font-size: 20px;
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
    $('#form, #fat, #fInsCursos').submit(function() {
        $.ajax({
            type: 'POST',
            url: $(this).attr('action'),
            data: $(this).serialize(),
            success: function(data) {
                $('#result').html(data);
                setTimeout("window.location = 'index.php'", 1000);
                
            }
        })
        
        return false;
    }); 
})  
</script>
<form method="post" action="includes/src/AlumnoInscribirCurso.php" name="fInsCursos" id="fInsCursos">
    <table class="bordered">
        <tr>
                <th>ID Curso</th>
                <th>Nombre</th>
                <th>Ciclo</th>
                <th>Creditos</th>
                <th>Seleccionar</th>
        </tr>

<?php
    include "includes/class/alumno.php";
    $alumno = new alumno;
    $rsCursos = $alumno->listarCursosDisponibles($_SESSION["user"]);  
?>
    <tr>
        <td colspan="2"><input type="submit" class="button_login" value="GUARDAR"/></td>
        <td colspan="3"><input type="button" class="button_login" onclick="history.back()" value="CANCELAR"/></td>
    </tr>
    </table>
</form>
<div id="result"></div>