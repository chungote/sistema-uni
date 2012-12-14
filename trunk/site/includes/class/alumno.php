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

    function listarCursosInscritos($idalumnos)
    {
        include ("includes/conexion.php");

        $rs_list = $cn->query("CALL paAlumnosCursosInscritos('$idalumnos')");
        $row_list = $rs_list->num_rows;

        echo '
        <table class="bordered">

        <tr>
            <th>ID Curso</th>
            <th>Nombre Curso</th>
            <th>DNI</th>
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
        include '../conexion.php';
        $rsCiclo = $cn->query("SELECT a.cicloActual FROM alumno a WHERE a.idalumno='$id'");
        $row = $rsCiclo->fetch_array(MYSQLI_ASSOC);
        $this->ciclo = $row["ciclo"];
        
    }

    public function modificar($nombre, $apellidos, $sexo, $dni, $fechan, $direccion,
        $telefono, $celular, $email, $id)
    {
        include '../conexion.php';
        $rs = $cn->query("CALL paAlumnoActualizar('$nombre','$apellidos','$sexo','$dni','$fechan','$direccion','$telefono','$celular','$email','$id')");

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

}


?>