<?php

class docente{
    
    function listarID($id){
        include("../conexion.php");
        
        $rs_list = $cn->query("CALL paDocenteListarID('$id')");
        $row_list = $rs_list->num_rows;
        
        $rows = $rs_list->fetch_array(MYSQLI_ASSOC);
        
        return $rows;
    
}
    
function cursos_docentes($id){
	
    include("../conexion.php");

        $rs_list = $cn->query("CALL paDocenteCursoListar('$id')");
        $row_list = $rs_list->num_rows;

        echo '
        <div style="margin-left: auto;
        margin-right: auto;
        width: 306px;">
        <table class="bordered">

        <tr>
            <th>Codigo</th>
            <th>Nombre Curso</th>
            <th>Ciclo</th>
        </tr>
        ';
        $i=0;
        while($rows = $rs_list->fetch_array(MYSQLI_ASSOC))
        {
            echo "<tr>";
            echo "<td>".$rows["idcurso"]."</td>";
            echo "<td>".$rows["nombre"]."</td>";
            echo "<td>".$rows["ciclo"]."</td>";
            echo "</tr>";
            $i++;
        };
        echo "</table></div>";
        //$cn->close();
}

function ListarAlumnosxCursos($iddocente,$idcurso){
    
	include("../conexion.php");

        $rs_list = $cn->query("CALL paDocenteListaAlmxCurso('$idcurso,'$iddocente'')");
        $row_list = $rs_list->num_rows;

        echo '
        <div style="margin-left: auto;
        margin-right: auto;
        width: 306px;">
        <table class="bordered">

        <tr>
            <th>Codigo</th>
            <th>Nombre y Apellidos</th>
            <th>Ciclo</th>
        </tr>
        ';
        $i=0;
        while($rows = $rs_list->fetch_array(MYSQLI_ASSOC))
        {
            echo "<tr>";
            echo "<td>".$rows["0"]."</td>";
            echo "<td><a href='docenteInsertaNotas.php'".$rows["1"]."</a></td>";
            echo "<td>".$rows["2"]."</td>";
            echo "</tr>";
            $i++;
        };
        echo "</table></div>";
}

function registranotas(){
	
}
	
}


?>