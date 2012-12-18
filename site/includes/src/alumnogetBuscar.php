<?php
require('../class/alumno.php');
require('../class/pagination.class.php');
    $cn = new mysqli("localhost", "root", "");
    $cn->select_db("sist_uni");

$items = 10;
$page = 1;

if(isset($_GET['page']) and is_numeric($_GET['page']) and $page = $_GET['page'])
		$limit = " LIMIT ".(($page-1)*$items).",$items";
	else
		$limit = " LIMIT $items";

if(isset($_GET['q'])){
		$q = $_GET['q'];
		$busqueda = htmlentities($q); 
            
            
        $sqlStr = "SELECT * FROM valumnolista WHERE nombre_completo LIKE '%$q%'";
            
		$sqlStrAux = "SELECT count(*) as total FROM valumnolista WHERE nombre_completo LIKE '%$q%'";
	}else{
		$sqlStr = "SELECT idalumno, CONCAT(apellidos, ', ', nombre) AS nombre_completo, dni, fecha_nacimiento, direccion, telefono_fijo, celular, email FROM alumno ORDER BY idalumno"; 
		$sqlStrAux = "SELECT count(*) as total FROM valumnolista";
	}

$rs_aux = $cn->query($sqlStrAux);
$aux = $rs_aux->fetch_assoc();
$query = $cn->query($sqlStr);
?>	<p><?php
		if($aux['total'] and isset($busqueda)){
				echo "{$aux['total']} Resultado".($aux['total']>1?'s':'')." que coinciden con tu b&uacute;squeda \"<strong>$busqueda</strong>\".";
			}elseif($aux['total'] and !isset($q)){
				echo "Total de registros: {$aux['total']}";
			}elseif(!$aux['total'] and isset($q)){
				echo htmlentities($c)."No hay registros que coincidan con tu b&uacute;squeda \"<strong>$busqueda</strong>\"";
			}
	?></p>

	<?php 
		if($aux['total']>0){
			$p = new pagination;
			$p->Items($aux['total']);
			$p->limit($items);
			if(isset($q))
					$p->target("alumnoBusqueda.php?q=".urlencode($q));
				else
					$p->target("alumnoBusqueda.php");
			$p->currentPage($page);
			$p->show();
             $sql = $sqlStr . $limit;
                $rs_list = $cn->query($sql);
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
        $i=0;
        while($rows = $rs_list->fetch_array(MYSQLI_ASSOC))
        {
            echo "<tr>";
            echo "<td>".$rows["idalumno"]."</td>";
            echo "<td><a onclick='abrirVentana(a".'"http://localhost/sistema-uni/site/mainAdm.php"'.")'>".$rows["nombre_completo"]."</a></td>";
            echo "<td>".$rows["dni"]."</td>";
            echo "<td>".$rows["fecha_nacimiento"]."</td>";
            echo "<td>".$rows["telefono_fijo"]."</td>";
            echo "<td>".$rows["celular"]."</td>";
            echo "<td>".$rows["email"]."</td>";
            echo "</tr>";
            $i++;
        };
        echo "</table>";
			$p->show();
		}
	?>
