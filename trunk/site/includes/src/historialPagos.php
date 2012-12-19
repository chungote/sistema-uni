
<script type="text/javascript">
<!--
	$(document).ready(function()
	{
		$("#tablesorter").tablesorter();
	}
);

$(document).ready(function()
	{
		$("#tablesorter").tablesorter( {sortList: [[0,0], [1,0]]} );
	}
);
-->
</script>

<?php
include ("includes/conexion.php");

        $rs_list = $cn->query("CALL paHistorialPagos()");
        $row_list = $rs_list->num_rows;

        echo '
        <table id="tablesorter" class="bordered" border="0" cellpadding="0" cellspacing="1">

        <tr>
            <th>ID Pago</th>
            <th>Nombre Alumno</th>
            <th>Semestre</th>
            <th>Tipo Pago</th>
            <th>Entidad Financiera</th>
            <th>Fecha Pago</th>
        </tr>
        ';
        $i = 0;
        while ($rows = $rs_list->fetch_array(MYSQLI_ASSOC)) {
            echo "<tr>";
            echo "<td>" . $rows["idpago"] . "</td>";
            echo "<td>" . $rows["nombre"] . "</td>";
            echo "<td>" . $rows["semestre"] . "</td>";
            echo "<td>" . $rows["tipoPago"] . "</td>";
            echo "<td>" . $rows["entidadF"] . "</td>";
            echo "<td>" . $rows["fecha_pago"] . "</td>";
            echo "</tr>";
            $i++;
        }
        ;
        echo "</table>";

?>