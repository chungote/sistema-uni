<?php


class alumno
{

    var $ciclo;

    function __construct()
    {
    }

    function listar()
    {
        include ("includes/conexion.php");

        $rs_list = $cn->query("CALL paAlumnoListar()");
        $row_list = $rs_list->num_rows;

        echo '
        <table class="bordered">

        <tr>
            <th>IDalumno</th>
            <th>Nombre</th>
            <th>DNI</th>
            <th>Fecha de Nacimiento</th>
            <th>Telefono Fijo</th>
            <th>Celular</th>
            <th>E-mail</th>
        </tr>
        ';
        $i = 0;
        while ($rows = $rs_list->fetch_array(MYSQLI_ASSOC)) {
            echo "<tr>";
            echo "<td>" . $rows["idalumno"] . "</td>";
            echo "<td>" . $rows["nombre_completo"] . "</td>";
            echo "<td>" . $rows["dni"] . "</td>";
            echo "<td>" . $rows["fecha_nacimiento"] . "</td>";
            echo "<td>" . $rows["telefono_fijo"] . "</td>";
            echo "<td>" . $rows["celular"] . "</td>";
            echo "<td>" . $rows["email"] . "</td>";
            echo "</tr>";
            $i++;
        }
        ;
        echo "</table>";
    }

    function insertar($nombre, $ape, $sex, $dni, $fnac, $dir, $tel, $celu, $mail)
    {
        include ("../conexion.php");
        $qinsertar = $cn->query("CALL paAlumnosInsertar('" . $nombre . "', '" . $ape .
            "', '" . $sex . "', '" . $dni . "', '" . $fnac . "', '" . $dir . "', '" . $tel .
            "', '" . $celu . "', '" . $mail . "')");

        if ($qinsertar)
            return true;
        else
            return false;
    }

    function listarID($id)
    {
        include ("../conexion.php");

        $rs_list = $cn->query("CALL paAlumnoListarID('$id')");
        $row_list = $rs_list->num_rows;
        $rows = $rs_list->fetch_array(MYSQLI_ASSOC);

        return $rows;
    }

    function listarCursosInscritos($idalumno)
    {
        include ("../conexion.php");

        $rs_list = $cn->query("CALL paAlumnosCursosInscritos('$idalumno')");
        $row_list = $rs_list->num_rows;

        echo '
        <table class="bordered">

        <tr>
            <th>ID Curso</th>
            <th>Nombre Curso</th>
            <th>Ciclo</th>
            <th>Creditos</th>
            <th>Vez</th>
        </tr>
        ';
        $i = 0;
        while ($rows = $rs_list->fetch_array(MYSQLI_ASSOC)) {
            echo "<tr>";
            echo "<td>" . $rows["IDCurso"] . "</td>";
            echo "<td>" . $rows["nombreCurso"] . "</td>";
            echo "<td>" . $rows["ciclo"] . "</td>";
            echo "<td>" . $rows["creditos"] . "</td>";
            echo "<td>" . $rows["vez"] . "</td>";
            echo "</tr>";
            $i++;
        }
        ;
        echo "</table>";
    }

    function listarCursosDisponibles($id)
    {
        include 'includes/conexion.php';
        $rsCiclo = $cn->query("SELECT a.cicloActual FROM alumno a WHERE a.idalumno='$id'");
        $row = $rsCiclo->fetch_array(MYSQLI_ASSOC);
        $c = $row["ciclo"];

        if ($c = '1') {
            $rsCursos = $cn->query("SELECT c.idcurso, c.nombre, c.ciclo, c.creditos,
            (SELECT COUNT(idcurso) FROM inscripcion_curso WHERE idmatricula=
             (SELECT idmatricula FROM matricula WHERE idalumno='$id' AND fecha_matricula = 
             (SELECT MAX(fecha_matricula) FROM matricula WHERE idalumno='$id'))
             AND idcurso=c.idcurso) AS estado
             FROM curso c WHERE c.ciclo='1' AND c.estado=1");

        }

        $i = 0;
        while ($rows = $rsCursos->fetch_array(MYSQLI_ASSOC)) {
            $estado = $rows["estado"];
            if ($estado == 1)
                $lectura = "disabled='disabled'";
            else
                if ($estado == 0)
                    $lectura = "";
            echo "<tr>\n";
            echo "<td>" . $rows["idcurso"] . "</td>\n";
            echo "<td>" . $rows["nombre"] . "</td>\n";
            echo "<td>" . $rows["ciclo"] . "</td>\n";
            echo "<td>" . $rows["creditos"] . "</td>\n";
            echo '<td><input  type="checkbox" ' . $lectura . ' name="curso[]" value="' . $rows["idcurso"] .
                '"/></td>';
            echo "</tr>";
            $i++;
        }
        ;
    }

    function inscribirCurso($idalumno, $cursos)
    {
        include '../conexion.php';
        $rs = $cn->query("CALL paAlumnoInscribirCursos('$idalumno', '$cursos')");

    }

    public function modificar($nombre, $apellidos, $dni, $fechan, $direccion,
        $telefono, $celular, $email, $id)
    {
        include '../conexion.php';
        $rs = $cn->query("CALL paAlumnoActualizar('$nombre','$apellidos','$dni','$fechan','$direccion','$telefono','$celular','$email','$id')");

        if ($rs)
            return true;
        else
            return false;
    }

    function cambiarClave($id, $claveAntigua, $claveNueva)
    {
        include '../conexion.php';
        $rs = $cn->query("CALL paAlumnoCambiarClave('$id', '$claveAntigua', '$claveNueva')");

        if ($rs)
            return true;
        else
            return false;
    }

    function datosBasicosBN($idalumno,$semestre)
    {
        include ("../conexion.php");

        $rs_list = $cn->query("SELECT * FROM valumnodatosbasicosbn WHERE idalumno='$idalumno' AND semestre='$semestre'");
        $row_list = $rs_list->num_rows;
        $rows = $rs_list->fetch_array(MYSQLI_ASSOC);

        return $rows;
    }

    function boletaNotas($idalumno, $semestre)
    {
        include '../conexion.php';

        $rslProm = $cn->query("CALL paAlumnoListarPromediosID('$idalumno','$semestre')");
        
        $i = 0;
        while ($rows = $rslProm->fetch_array(MYSQLI_ASSOC)) {
            echo "<tr>\n";
            echo "<td>" . $rows["IDCurso"] . "</td>\n";
            echo "<td>" . $rows["nombreCurso"] . "</td>\n";
            echo "<td>" . $rows["ciclo"] . "</td>\n";
            echo "<td>" . $rows["creditos"] . "</td>\n";
            echo "<td>" . $rows["vez"] . "</td>\n";
            echo "<td>" . $rows["promedio"] . "</td>\n";
            echo "</tr>";
            $i++;
        }
        ;
    }
    
    function cursosxCicloKardex($idalumno,$ciclo){
	include '../conexion.php';

        $rslProm = $cn->query(" CALL paKardexCiclo('$idalumno','$ciclo')");
        
        $i = 0;
        while ($rows = $rslProm->fetch_array(MYSQLI_ASSOC)) {
            echo "<tr>\n";
            echo "<td>" . $rows["idcurso"] . "</td>\n";
            echo "<td>" . $rows["nombre"] . "</td>\n";
            echo "<td>" . $rows["creditos"] . "</td>\n";
            $vez = $rows["vez"];
            if($rows["vez"]=="") $vez = "0";
            echo "<td>" . $vez . "</td>\n";
            echo "<td>" . $rows["semestre"] . "</td>\n";
            
            $prom = $rows["promedio"];
            if($prom=="") $prom = "0";
            echo "<td>" . $prom . "</td>\n";
            
            $obs = $rows["observacion"];
            if($obs=="") $obs = "NO INSCRITO";
            echo "<td>" . $obs . "</td>\n";
            echo "</tr>";
            $i++;
        }
        ;
}

}


?>