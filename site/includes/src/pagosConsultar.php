<link rel="stylesheet" href="../../../css/tabla1.css" />
<form action="pagosConsultar.php?id=<?php echo $_SESSION["user"]; ?>" method="post">
	<table>
		<tr>
			<td>Campo de Busqueda: </td>
			<td>
				<select name="campo">
					<option value="1">Id Pago</option>
					<option value="2">Nombre</option>
					<option value="3">Fecha</option>
				</select>
			</td>
			<td><input type="text" name="valor" /></td>
			<td><input type="submit" value="Consultar" /></td>
		</tr>
		
	</table>
</form>
<?php
$c=$_POST["campo"]; 
$v=$_POST["valor"];

    include("../conexion.php");
	if(isset($c))
	{
		
		$rs_list = $cn->query("CALL paPagosConsulta('$c', '$v')");
        $row_list = $rs_list->num_rows;

        echo '
        <table class="bordered">

        <tr>
            <th>Codigo</th>
            <th>Alumno</th>
            <th>Semestre</th>
            <th>Tipo Pago</th>
            <th>Descripcion</th>
            <th>Fecha Pago</th>
        </tr>
        ';
        $i=0;
        while($rows = $rs_list->fetch_array(MYSQLI_ASSOC))
        {
            echo "<tr>";
            echo "<td>".$rows["IDPago"]."</td>";
            echo "<td>".$rows["nombre"]."</td>";
            echo "<td>".$rows["semestre"]."</td>";
            echo "<td>".$rows["tipo_pago"]."</td>";
			echo "<td>".$rows["descripcion"]."</td>";
			echo "<td>".$rows["fecha_pago"]."</td>";
            echo "</tr>";
            $i++;
        };
        echo "</table>";
  
	}
	
	  
?>