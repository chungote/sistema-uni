<?php
	session_start();
?>
<html>
<head>
		<meta http-equiv="content-type" content="text/html; charset=utf-8"/>
		<title>...::: SIGA :::...</title>
		<link rel="stylesheet" type="text/css" href="../css/style.css"/>
        
        <script type="text/javascript" src="../js/jquery-latest.js"></script>
<script type="text/javascript" src="../js/jquery.tablesorter.js"></script>
    	<script src="../js/jquery-1.8.3.js" type="text/javascript"></script>
        <script src="../js/buscar.js" type="text/javascript"></script>
        
        <link rel="stylesheet" href="../css/calendar.css" />
        <link rel="stylesheet" href="../css/reset.css" />
		<link rel="stylesheet" href="../css/960_fluid.css" />
		<link rel="stylesheet" href="../css/main.css" />
		<link rel="stylesheet" href="../css/bar_nav.css" />
		<link rel="stylesheet" href="../css/side_nav.css" />
        <link rel="stylesheet" href="../css/jquery-ui.css" />
        <link rel="stylesheet" href="../css/tabla1.css" />
        <link rel="stylesheet" href="../css/jquery-ui-1.7.2.custom.css" />
		
		
		<script type="text/javascript" src="../js/jquery-ui-1.9.2.custom.js"></script>
		<script type="text/javascript" src="../scripts/sherpa_ui.js"></script>
        
	
        <script type="text/javascript">
jQuery(function($){
	$.datepicker.regional['es'] = {
		closeText: 'Cerrar',
		prevText: '&#x3c;Ant',
		nextText: 'Sig&#x3e;',
		currentText: 'Hoy',
		monthNames: ['Enero','Febrero','Marzo','Abril','Mayo','Junio',
		'Julio','Agosto','Septiembre','Octubre','Noviembre','Diciembre'],
		monthNamesShort: ['Ene','Feb','Mar','Abr','May','Jun',
		'Jul','Ago','Sep','Oct','Nov','Dic'],
		dayNames: ['Domingo','Lunes','Martes','Mi&eacute;rcoles','Jueves','Viernes','S&aacute;bado'],
		dayNamesShort: ['Dom','Lun','Mar','Mi&eacute;','Juv','Vie','S&aacute;b'],
		dayNamesMin: ['Do','Lu','Ma','Mi','Ju','Vi','S&aacute;'],
		weekHeader: 'Sm',
		dateFormat: 'dd/mm/yy',
		firstDay: 1,
		isRTL: false,
		showMonthAfterYear: false,
		yearSuffix: ''};
	$.datepicker.setDefaults($.datepicker.regional['es']);
});    
$( "#datepicker" ).datepicker({ dateFormat: "yy-mm-dd" });
$(function() {
        $( "#datepicker" ).datepicker();
        $( "#format" ).change(function() {
            $( "#datepicker" ).datepicker( "option", "dateFormat", "yy-mm-dd" );
        });
    });

        $(document).ready(function() {
           $("#datepicker").datepicker();
        });
    </script>
	</head>
   <body> 
   
<?php

if ($_SESSION["user"])
            {
                include("includes/src/barra_usuario.php");
                include("includes/src/contFoto.php");
            }
        		

include("banner.htm");

		    if (!$_SESSION["user"])
            {
                include 'form/login.html';
            }
        		
    		else
        		{
        		  
        		  if($_SESSION["usuarioNivel"]==1)
				  {
				  	include "menus/menuAlumnos.html";
				  }                                        
                  else if($_SESSION["usuarioNivel"]==2)
                  {
                    include "menus/menuDocente.html";                    
                  }
                  
                  else
                    include "menus/menuAdministrativo.html";
                    
                    echo ' <div class="contenido">';
            	    $p=$_GET["p"]; 
                    $opt=$_GET["opt"];
        			$usuario=$_SESSION["user"];
                    switch($p)
                
                    {
                        case 'matricula': include("form/registraMatricula.php"); break;
                        
                        case 'alumno': 
                            switch($opt)
                            {
                                case 'datospersonales': echo "<iframe src='includes/src/alumnoListaID.php?id=".$_SESSION["user"]."'' width='930px' height='350px' frameborder='0'></iframe>"; break;
                                case 'cambiarclave': include("form/frmAlumnoCambiaClave.php"); break;
                                case 'cambiarfoto': include("form/frmCambiarFoto.htm"); break;
                                case 'inscribircursos': include("form/frmAlumnoInscribirCurso.php"); break;
                                case 'cursosInscritos': echo "<iframe src='includes/src/alumnoCursosInscritos.php?id=".$_SESSION["user"]."'' width='930px' height='350px' frameborder='0'></iframe>"; break;
                                case 'kardex': echo "<iframe src='includes/src/alumnoKardex.php?id=".$_SESSION["user"]."&semestre=201201'' width='930px' height='350px' frameborder='0'></iframe>"; break;
                                case 'boletanotas': echo "<iframe src='includes/src/alumnoBoletaNotas.php?id=".$_SESSION["user"]."&semestre=201202'' width='930px' height='350px' frameborder='0'></iframe>"; break;
                                case 'lista': echo "<iframe src='includes/src/alumnoBusqueda.php' width='930px' height='350px' frameborder='0'></iframe>"; break;
                                case 'registro': include("form/registro_alumno.htm"); break;
                            }
                         break;               
                        case 'facultad': include("form/registro_facultad.htm"); break;                
                        case 'escuela': include("form/registro_escuela.htm"); break;
                        case 'ciclo': include("form/registro_ciclo.htm"); break;
                        case 'entidad_financiera': include("form/registro_entidad_financiera.htm"); break;
                        case 'tipo_pago': include("form/registro_tipo_pago.htm"); break;
                        case 'pagos': include("form/registro_pagos.htm"); break;
						
						case 'docente':
							switch($opt)
							{
								case 'datosp': echo "<iframe src='includes/src/docenteDatosID.php?id=".$_SESSION["user"]."' width='930px' height='350px' frameborder='0'></iframe>"; break;
								case 'listacurso': echo "<iframe src='includes/src/docenteCurso.php?id=".$_SESSION["user"]."' width='930px' height='350px' frameborder='0'></iframe>"; break;
								case 'registranotas': echo "<iframe src='includes/src/frmDocenteRegistraNotas.php' width='930px' height='390px' frameborder='0'></iframe>"; break;
                                }
                         break; 
                         
						case 'adm':
							switch($opt)
							{
								case 'listapagos': echo "<iframe src='includes/src/pagosConsultar.php' width='930px' height='350px' frameborder='0'></iframe>"; break;
							    case 'registraOperaciones': case 'lista': echo "<iframe src='includes/src/alumnoBusqueda.php' width='930px' height='390px' frameborder='0'></iframe>"; break;
                                case 'historialPagos': include "includes/src/historialPagos.php"; break;
                            } 
                    }
        		}
          
           
?>
</div>
</body>
</html>