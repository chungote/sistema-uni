<script language="javascript">
function validafrmClave() {
    usuario = document.getElementById("usuario").value;
    clave = document.getElementById("clave").value;
    rclave = document.getElementById("rclave").value;
    claveA = document.getElementById("claveA").value;
    
if( usuario == null || usuario.length == 0 || /^\s+$/.test(usuario) ) {
    alert("Escribe tu id");
    return false;
}
if( claveA == null || claveA.length == 0 || /^\s+$/.test(claveA) ){
    alert("Ingrese clave actual");
    return false;
}
 if ( clave == null || clave.length == 0 || /^\s+$/.test(clave) ) {
    alert("Escriba su nueva clave");
    return false;
}
 if(clave == "123456"){
    alert("La clave debe ser diferente de '123456'");
    return false;
}
if(clave !== rclave){
    alert("Los campos de clave no coinciden");
    return false;
}
return true;
}
</script>
<form method="post" action="includes/src/alumnoCambiarClave.php" onsubmit="return validafrmClave()" style="width: 300px; margin-left: auto; margin-right: auto;">
    <table>
        <tr>
            <td>Usuario: </td>
            <td><input type="text" id="usuario" name="usuario" readonly="readonly" value="<?php echo $_SESSION["user"];?>" /></td>
        </tr>
        <tr>
            <td>Clave Actual: </td>
            <td><input type="password" id="claveA" name="claveA" /></td>
        </tr>
        <tr>
            <td>Nueva Clave: </td>
            <td><input type="password" id="clave" name="clave" /></td>
        </tr>
        <tr>
            <td>Repita la Clave:</td>
            <td><input type="password" id="rclave" name="rclave" /></td>
        </tr>
        <tr>
            <td><input type="submit" value="CAMBIAR" class="button_login" /></td>
            <td><input  type="button" value="CANCELAR" class="button_login" onclick="history.back()"/></td>
        </tr>
    </table>
</form>