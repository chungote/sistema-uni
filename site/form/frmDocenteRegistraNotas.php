<?php
session_start();
	   include("../includes/conexion.php");
       //$id = $_GET["id"];
        $rscbCurso = $cn->query("CALL paDocenteCursoListar('".$_SESSION["user"]."')");
        
?>
<link rel="stylesheet" href="../../css/tabla1.css" />
<script type="text/javascript" src="../../js/jquery.js"></script>
<script type="text/javascript" src="../../js/jquery.jeditable.js"></script>
<script type="text/javascript" src="../../js/js.js"></script>
<form action="frmDocenteRegistraNotas.php" method="post">
	<table>
		<tr>
			<td>Campo de Busqueda: </td>
			<td>
				<select name="curso">
					<?php
	                      $i=0;
                            while($rowcbCurso = $rscbCurso->fetch_array(MYSQLI_ASSOC))
                            {  
                    			echo '<option value="'.$rowcbCurso["idcurso"].'">'.$rowcbCurso["nombre"].'</option>';
                                $i++;
                            }; 
                    ?>
				</select>
			</td>
			<td><input type="submit" value="Consultar" /></td>
		</tr>
		
	</table>
</form>
<?php
$c=$_POST["curso"]; 
$u = $_SESSION["user"];

    if(isset($c))
    {
		include("../includes/conexion.php");
		$rs_list = $cn->query("CALL paDocenteListaAlmxCurso('$c', '".$_SESSION["user"]."')");
        $row_list = $rs_list->num_rows;
    
        echo '
        <table class="bordered">

        <tr>
            <th>Codigo</th>
            <th>Alumno</th>
            <th>Ciclo Actual</th>
            <th>Nota</th>
            
        </tr>
        ';
        $i=0;
        while($rows = $rs_list->fetch_array(MYSQLI_ASSOC))
        {
            echo "<tr>";
            echo "<td>".$rows["idalumno"]."</td>";
            echo "<td>".$rows["nombre"]."</td>";
            echo "<td>".$rows["cicloActual"]."</td>";
            echo '<td><div class="text" id="nombre_usuario-'.$_SESSION["user"].'" </div></td>';
            echo "</tr>";
            $i++;
        };
	  }
?>