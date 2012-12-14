<?php

class curso{
    
    function listarCursoxAlumno(){
        include("includes/conexion.php");
        
        
	
}
    
    function Listarxcurso($id){
        
        include("includes/conexion.php");

        $rs_list = $cn->query("CALL paCursoIDListar($id)");
        $row_list = $rs_list->num_rows;

        echo '
        <table class="bordered">

        <tr>
            <th>Codigo</th>
            <th>Nombre Curso</th>
            <th>Ciclo</th>
            <th>Creditos</th>
        </tr>
        ';
        $i=0;
        while($rows = $rs_list->fetch_array(MYSQLI_ASSOC))
        {
            echo "<tr>";
            echo "<td>".$rows["idcurso"]."</td>";
            echo "<td>".$rows["nombreCurso"]."</td>";
            echo "<td>".$rows["ciclo"]."</td>";
            echo "<td>".$rows["creditos"]."</td>";
            echo '<td><input type="checkbox" name="curso[]" value="'.$rows["idcurso"].'"/></td>';
            echo "</tr>";
            $i++;
        };
        echo "</table>";
        $cn->close();
	
}
	
}


?>