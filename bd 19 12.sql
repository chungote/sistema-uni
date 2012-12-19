/*
SQLyog Ultimate v9.01 
MySQL - 5.1.37 : Database - sist_uni
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`sist_uni` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `sist_uni`;

/*Table structure for table `administrativo` */

DROP TABLE IF EXISTS `administrativo`;

CREATE TABLE `administrativo` (
  `idadministrativo` char(8) NOT NULL,
  `nombre` varchar(40) DEFAULT NULL,
  `apellidos` varchar(40) DEFAULT NULL,
  `sexo` varchar(9) DEFAULT NULL,
  `dni` char(8) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `telefono_fijo` char(11) DEFAULT NULL,
  `celular` char(9) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `clave` varchar(200) DEFAULT NULL,
  `estado_linea` int(11) DEFAULT NULL,
  `imagen` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idadministrativo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `administrativo` */

insert  into `administrativo`(`idadministrativo`,`nombre`,`apellidos`,`sexo`,`dni`,`fecha_nacimiento`,`direccion`,`telefono_fijo`,`celular`,`email`,`clave`,`estado_linea`,`imagen`) values ('ADM0001','Karin','Aguilar','femenino','12345678','1960-03-22','123dd','123456','123456789','dfdsf','7c4a8d09ca3762af61e59520943dc26494f8941b',0,NULL),('ADM0003','Karla','Fernandez','femenino','54637821','1965-11-04','Av. Bolognesi','324155','985643627','karlaf@gmail.com','7c4a8d09ca3762af61e59520943dc26494f8941b',0,NULL),('ADM0004','Cristina','Trelles Espinoza','femenino','09856831','1960-10-02','Av. Grau','345365','987343232','ctrelles@gmail.com','7c4a8d09ca3762af61e59520943dc26494f8941b',0,NULL),('ADM0005','Julissa Abigail','Fernandez Garcia','Femenino','46894721','1991-04-10','Av. Grau - Piura','758493','905684725','julissaf@yahoo.com','7c4a8d09ca3762af61e59520943dc26494f8941b',0,NULL),('ADM0006','Carlos Daniel','Sanchez Ramirez','Masculino','03854213','1990-07-20','Av. Loreto - Piura','762145','845793126','carlos_danif@yahoo.com','7c4a8d09ca3762af61e59520943dc26494f8941b',0,NULL),('ADM0007','Daniela Fernanda','Cordova Cruz','Femenino','48975474','1990-05-17','Calle Arequipa - Negritos','784563','969562181','Danielafc@hotmail.com','7c4a8d09ca3762af61e59520943dc26494f8941b',0,NULL),('ADM0008','Jose Luis','NuÃ±ez Martinez','Masculino','48659725','1993-02-27','Talara Alta','497611','969900215','joseuap@hotmail.com','7c4a8d09ca3762af61e59520943dc26494f8941b',0,NULL),('ADM0009','Yahir Ernesto','Seminario Mejia','Masculino','47816135','1992-06-15','San MartÃ­n 102 Cent. Negritos','393021','968708304','macuto_g_teamo@hotmail.com','7c4a8d09ca3762af61e59520943dc26494f8941b',0,NULL);

/*Table structure for table `alumno` */

DROP TABLE IF EXISTS `alumno`;

CREATE TABLE `alumno` (
  `idalumno` char(8) NOT NULL,
  `nombre` varchar(40) DEFAULT NULL,
  `apellidos` varchar(40) DEFAULT NULL,
  `sexo` varchar(9) DEFAULT NULL,
  `dni` char(8) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `telefono_fijo` char(11) DEFAULT NULL,
  `celular` char(9) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `cicloActual` char(1) DEFAULT NULL,
  `clave` varchar(200) DEFAULT NULL,
  `estado_linea` int(11) DEFAULT NULL,
  `imagen` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idalumno`),
  KEY `alumno_ciclo` (`cicloActual`),
  CONSTRAINT `alumno_ciclo` FOREIGN KEY (`cicloActual`) REFERENCES `ciclo` (`idciclo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `alumno` */

insert  into `alumno`(`idalumno`,`nombre`,`apellidos`,`sexo`,`dni`,`fecha_nacimiento`,`direccion`,`telefono_fijo`,`celular`,`email`,`cicloActual`,`clave`,`estado_linea`,`imagen`) values ('A0001','Juan Carlos','Silva Panta','Masculino','70438385','1990-06-11','Av Z15 A Talara Alta ','123456','948092352','juancarlossp7@hotmail.com','1','40bd001563085fc35165329ea1ff5c5ecbdbbeef',0,'../images/usuarios/A0001.jpg'),('A0002','Mariella','Sosa Purizaca','Femenino','12345678','1993-04-11','Negritos','393613','969100937','aries_virgo1104@hotmail.com',NULL,'7c4a8d09ca3762af61e59520943dc26494f8941b',0,'../images/usuarios/A0002.jpg'),('A0003','Martin Humberto','Rosales Aleman','Masculino','45362782','1993-11-07','Talara Alta','463067','985738256','martin_rocker@hotmail.com','3','8cb2237d0679ca88db6464eac60da96345513964',0,NULL),('A0004','Cristian','Trelles Navarro','Masculino','03886488','1973-05-16','Aproviser G-8','354620','980723559','xtiantrelles@yahoo.com',NULL,'7c4a8d09ca3762af61e59520943dc26494f8941b',0,''),('A0005','Carlos','Mendoza Urbina','Masculino','06724990','1983-03-26','Parque 72-24','498870','76542345','mgnjo@gmail.com',NULL,'7c4a8d09ca3762af61e59520943dc26494f8941b',0,NULL),('A0006','Victor Miguel','Agurto Silva','Masculino','48579305','1992-02-28','Los Pinos','402369','901325269','victor_0292@hotmail.com',NULL,'7c4a8d09ca3762af61e59520943dc26494f8941b',0,NULL),('A0007','William Arnold','Chavez Jimenez','Masculino','44568792','1992-12-08','San Pedro','764803','980142973','willy_08@hotmail.com',NULL,'7c4a8d09ca3762af61e59520943dc26494f8941b',0,NULL),('A0008','Gino Ismael','Cruz Sanchez','Masculino','48002369','1992-08-04','Juan Pablo II','784135','914576823','zyko_cs@hotmail.com',NULL,'7c4a8d09ca3762af61e59520943dc26494f8941b',0,NULL),('A0009','Luis Fernando','Fernandez Cordova','Masculino','46741203','1992-03-17','Fonavi D-3','757810','900423615','fernando2006_666@hotmail.com',NULL,'7c4a8d09ca3762af61e59520943dc26494f8941b',0,NULL),('A0010','Henry Heli','Garcia Herrada','Masculino','48230159','1993-02-18','Aproviser I Etapa','700314','999547115','patricio_15_10@hotmail.com',NULL,'7c4a8d09ca3762af61e59520943dc26494f8941b',0,NULL),('A0011','Kristel Abigail','GuzmÃ¡n Saldarriaga','Femenino','47469523','1993-08-11','San Sebastian','762144','900048159','love_kris@hotmail.com',NULL,'7c4a8d09ca3762af61e59520943dc26494f8941b',0,NULL),('A0012','Riccy AnahÃ­','Lizama Alvarado','Femenino','41240569','1992-07-10','San Sebastian','710234','911145698','riccyla@hotmail.com',NULL,'7c4a8d09ca3762af61e59520943dc26494f8941b',0,NULL),('A0013','Juan Diego','Meca Morante','Masculino','48846972','1993-02-19','Jorge Chavez','765002','944569728','juandi_19@hotmail.com',NULL,'7c4a8d09ca3762af61e59520943dc26494f8941b',0,NULL),('A0014','Julio Cesar','Medina Villalta','Masculino','48005623','1993-05-19','Aproviser II Etapa','700782','912350028','julio_mevi19@hotmail.com',NULL,'7c4a8d09ca3762af61e59520943dc26494f8941b',0,NULL),('A0015','Juan Omar','Ordinola Agurto','Masculino','48665549','1993-09-04','Juan Pablo II','458962','897754690','juan_love9304@hotmail.com',NULL,'7c4a8d09ca3762af61e59520943dc26494f8941b',0,NULL),('A0016','Joel Osbe','Paiba Landa','Masculino','46548928','1990-10-15','Aproviser II Etapa','400045','998911568','joel_15_ob@hotmail.com',NULL,'7c4a8d09ca3762af61e59520943dc26494f8941b',0,NULL),('A0017','Jose Miguel','Palacios Quispe','Masculino','48899712','1993-07-10','Jorge Chavez','414058','911564288','josemi_pq@hotmail.com',NULL,'7c4a8d09ca3762af61e59520943dc26494f8941b',0,NULL),('A0018','Diego Alonso','Palacios ReaÃ±o','Masculino','46500324','1993-11-12','Jorge Chavez','492253','999863251','diego_1211@hotmail.com',NULL,'7c4a8d09ca3762af61e59520943dc26494f8941b',0,NULL),('A0019','Handerson','Pimentel Flores','Masculino','48123744','1993-09-17','Fonavi D-8','778452','978450139','hander_pimen@hotmail.com',NULL,'7c4a8d09ca3762af61e59520943dc26494f8941b',0,NULL),('A0020','Yusara','Preciado Gonzales','Femenino','48062235','1993-02-18','San Pedro','760012','965500123','yussy_acuario2@hotmail.com',NULL,'7c4a8d09ca3762af61e59520943dc26494f8941b',0,NULL);

/*Table structure for table `ciclo` */

DROP TABLE IF EXISTS `ciclo`;

CREATE TABLE `ciclo` (
  `idciclo` char(1) NOT NULL,
  `nombre` varchar(15) DEFAULT NULL,
  `abreviatura` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`idciclo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ciclo` */

insert  into `ciclo`(`idciclo`,`nombre`,`abreviatura`) values ('1','uno','I'),('2','segundo','II'),('3','tercer','II'),('4','cuarto','IV'),('5','quinto','V'),('6','sexto','VI'),('7','septimo','VI'),('8','octavo','VI'),('9','noveno','IX'),('A','decimo','X');

/*Table structure for table `curso` */

DROP TABLE IF EXISTS `curso`;

CREATE TABLE `curso` (
  `idcurso` char(6) NOT NULL,
  `nombre` varchar(40) DEFAULT NULL,
  `ciclo` char(1) DEFAULT NULL,
  `creditos` int(11) DEFAULT NULL,
  `preRequisito` char(6) DEFAULT NULL,
  `estado` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`idcurso`),
  KEY `curso_ciclo` (`ciclo`),
  CONSTRAINT `curso_ciclo` FOREIGN KEY (`ciclo`) REFERENCES `ciclo` (`idciclo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `curso` */

insert  into `curso`(`idcurso`,`nombre`,`ciclo`,`creditos`,`preRequisito`,`estado`) values ('091211','Derechos humanos y sociales','1',3,NULL,1),('091212','Comunacion oral y escrita','1',3,NULL,1),('091213','Medio ambiente','1',3,NULL,1),('091214','Matematica y logica','1',4,NULL,1),('091215','Algoritmos y Programacion','1',4,NULL,1),('091216','Herramientas tic','1',2,NULL,1),('091217','Introduccion a la ingenieria de sistemas','1',3,NULL,1),('091221','Practicas operativas justas','2',3,'091211',1),('091222','Vida espiritual','2',2,NULL,1),('091223','Estadistica','2',4,'091214',1),('091224','Calculo diferencial e integral','2',4,NULL,1),('091225','Tecnicas de programacion','2',4,'091215',1),('091226','Tecnologia del computador','2',3,'091216',1),('091227','Desarrollo de aplicaciones multimedia','2',2,NULL,1),('091231','Asuntos de consumidores','3',2,'091221',1),('091232','Estadistica inferencial','3',4,'091223',1),('091233','Fisica I','3',4,'091224',1),('091234','Estructura de datos','3',4,'091225',1),('091235','Programacion visual I','3',4,'091227',1),('091236','Base de datos I','3',3,NULL,1),('091237','Marketing empresarial','3',2,NULL,1),('091238','Ingles basico','3',2,NULL,1),('091241','Gobernanza de las organizaciones','4',2,'091231',1),('091242','Deontologia','4',2,NULL,1),('091243','Fisica II','4',4,'091233',1),('091244','Programacion visual II','4',4,'091235',1),('091245','Contabilidad','4',3,NULL,1),('091246','Base de datos II','4',3,'091236',1),('091247','Derecho informatico','4',2,NULL,1),('091248','Ingles tecnico','4',2,NULL,1),('091251','Practicas laborales','5',2,'091241',1),('091252','Ingeneria de software I','5',4,'091235',1),('091253','Tecnologia de programacion','5',3,'091244',1),('091254','Arquitectura de computadoras','5',3,'091243',1),('091255','Tecnologia web I','5',4,NULL,1),('091256','Administracion de empresas','5',3,'091245',1),('091257','Proyecto de base de datos','5',4,'091246',1),('091261','Desarrollo de la sociedad I','6',2,'091251',1),('091262','Ingenieria de software II','6',4,'091252',1),('091263','Sistemas operativos','6',3,'091254',1),('091264','Tecnologia web II','6',4,'091255',1),('091265','Investigacion de operaciones','6',3,'091256',1),('091266','Fundamentos de redes','6',3,'091243',1),('091267','Costos y presupuestos','6',2,NULL,1),('091268','Administracion de operaciones','6',2,NULL,1),('091271','Desarrollo de la sociedad II','7',2,'091261',1),('091272','Sistemas de informacion','7',4,'091262',1),('091273','Tesis I','7',3,NULL,1),('091274','Microcontroladores','7',3,'091263',1),('091275','Tecnologia movil','7',3,'091264',1),('091276','Teoria de decisiones','7',3,'091265',1),('091277','Tecnologia y seguridad de redes','7',3,'091266',1),('091281','Desarrollo de la Sociedad III','8',2,'091271',1),('091282','Fe cristiana y compromiso pastoral','8',2,'091222',1),('091283','Tesis II','8',3,'091273',1),('091284','Proyectos de control','8',3,'091274',1),('091285','Inteligencia de negocios','8',4,'091272',1),('091286','Teoria general de sistemas','8',3,'091276',1),('091287','Administracion de servidores','8',4,'091277',1),('091291','Practica profesional I','9',5,'160 CR',1),('091292','Planeamiento estrategico de TIC','9',3,'091285',1),('091293','Tesis III','9',3,'091283',1),('091294','Inteligencia artificial','9',3,'091284',1),('091295','Gestion de TIC','9',3,'091276',1),('091296','Dinamica de sistemas','9',3,'091286',1),('091297','Proyecto de redes','9',3,'091287',1),('0912A1','Practica profesional II','A',5,'091291',1),('0912A2','Administracion de proyectos de TIC','A',3,'091292',1),('0912A3','Tesis IV','A',3,'091293',1),('0912A4','Gestion de ERP','A',3,'091295',1),('0912A5','Proyecto de ingenieria de sistemas','A',3,'091296',1),('0912A6','Control y auditoria de TIC','A',3,'091295',1),('0912A7','Didáctica universitaria','A',2,NULL,1),('0912A8','Evaluacion economica de proyectos','A',2,NULL,1);

/*Table structure for table `docente` */

DROP TABLE IF EXISTS `docente`;

CREATE TABLE `docente` (
  `iddocente` char(8) NOT NULL,
  `nombre` varchar(40) DEFAULT NULL,
  `apellidos` varchar(40) DEFAULT NULL,
  `sexo` varchar(9) DEFAULT NULL,
  `dni` char(8) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `telefono_fijo` char(11) DEFAULT NULL,
  `celular` char(9) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `clave` varchar(200) DEFAULT NULL,
  `estado_linea` int(11) DEFAULT NULL,
  `imagen` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`iddocente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `docente` */

insert  into `docente`(`iddocente`,`nombre`,`apellidos`,`sexo`,`dni`,`fecha_nacimiento`,`direccion`,`telefono_fijo`,`celular`,`email`,`clave`,`estado_linea`,`imagen`) values ('D0001','Hector','Fiestas Bancayan','Masculino','12345678','1956-05-24','dfsdfds','123456','123456789','fiestasb@hotmail.com','7c4a8d09ca3762af61e59520943dc26494f8941b',0,NULL),('D0002','Ricardo','Seminario Vasquez','Masculino','03869547','1960-04-20','Miraflores','073754896','985647123','seminariovr@hotmail.com','7c4a8d09ca3762af61e59520943dc26494f8941b',0,''),('D0003','Ricardo','More Reaño','Masculino','03886452','1960-08-15','Av. Loreto','073764852','992245693','ricardom@hotmail.com','7c4a8d09ca3762af61e59520943dc26494f8941b',0,''),('D0004','Victor Angel','Ancajima Miñan','Masculino','03896853','1965-10-20','Miraflores','073758463','900124596','vancajima@hotmail.com','7c4a8d09ca3762af61e59520943dc26494f8941b',0,''),('D0005','Jennifer','Sullon Chinga','Femenina','03869842','1968-05-20','Los Tallanes','073769584','908541296','jennysu@hotmail.com','7c4a8d09ca3762af61e59520943dc26494f8941b',0,''),('D0006','Wendy','Dominguez Oliva','Femenina','03875631','1968-11-03','Ignacio Merino','073658423','911265447','wendydo@hotmail.com','7c4a8d09ca3762af61e59520943dc26494f8941b',0,''),('D0007','Jose Guillerno','Yanayaco Calle','Masculino','03641206','1965-11-04','Av Grau','073354200','980032600','guillerjo@hotmail.com','7c4a8d09ca3762af61e59520943dc26494f8941b',0,''),('D0008','Edy','Garcia  Coronado','Masculino','03854123','1966-09-10','Miraflores','073458123','910023456','edygc@hotmail.com','7c4a8d09ca3762af61e59520943dc26494f8941b',0,''),('D0009','Carlos Daniel','Cruz Cespedes','Masculino','03855394','1966-04-10','Av. Loreto','073745632','998741455','carlosc@hotmail.com','7c4a8d09ca3762af61e59520943dc26494f8941b',0,'');

/*Table structure for table `docente_curso` */

DROP TABLE IF EXISTS `docente_curso`;

CREATE TABLE `docente_curso` (
  `iddocente` char(8) DEFAULT NULL,
  `idcurso` char(6) DEFAULT NULL,
  `observacion` varchar(50) DEFAULT NULL,
  KEY `cursoxdocente` (`idcurso`),
  KEY `docentexcurso` (`iddocente`),
  CONSTRAINT `cursoxdocente` FOREIGN KEY (`idcurso`) REFERENCES `curso` (`idcurso`),
  CONSTRAINT `docentexcurso` FOREIGN KEY (`iddocente`) REFERENCES `docente` (`iddocente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `docente_curso` */

insert  into `docente_curso`(`iddocente`,`idcurso`,`observacion`) values ('D0003','091214',NULL),('D0006','091212',NULL),('D0004','091217',NULL),('D0002','091216',NULL),('D0006','091213',NULL),('D0003','091297',NULL),('D0001','091225',NULL),('D0004','091252',NULL),('D0001','091244',NULL),('D0001','091264',NULL),('D0002','091296',NULL),('D0002','091285',NULL),('D0006','091211',NULL),('D0006','091251',NULL),('D0006','091251',NULL),('D0005','091227',NULL),('D0005','091236',NULL),('D0005','091242',NULL),('D0005','0912A6',NULL),('D0001','091272',NULL),('D0001','091235',NULL),('D0001','091215',NULL);

/*Table structure for table `entidad_financiera` */

DROP TABLE IF EXISTS `entidad_financiera`;

CREATE TABLE `entidad_financiera` (
  `identidadf` char(6) NOT NULL,
  `descripcion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`identidadf`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `entidad_financiera` */

insert  into `entidad_financiera`(`identidadf`,`descripcion`) values ('EF0001','Caja Sullana'),('EF0002','Caja Trujillo'),('EF0003','Mi Banco'),('EF0004','Banco de la Nacion'),('EF0005','Banco de Credito');

/*Table structure for table `escuela` */

DROP TABLE IF EXISTS `escuela`;

CREATE TABLE `escuela` (
  `idescuela` char(6) NOT NULL,
  `idfacultad` char(6) DEFAULT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `observaciones` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idescuela`),
  KEY `escuela_facultad` (`idfacultad`),
  CONSTRAINT `escuela_facultad` FOREIGN KEY (`idfacultad`) REFERENCES `facultad` (`idfacultad`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `escuela` */

insert  into `escuela`(`idescuela`,`idfacultad`,`nombre`,`observaciones`) values ('e00001','FA0001','Ingenieria',NULL),('e00002','FA0005','Derecho',NULL),('e00003','FA0004','Administracion',NULL),('e00004','FA0002','Medicina Humana',NULL),('e00005','FA0003','Contabilidad',NULL);

/*Table structure for table `facultad` */

DROP TABLE IF EXISTS `facultad`;

CREATE TABLE `facultad` (
  `idfacultad` char(6) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `observacion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idfacultad`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `facultad` */

insert  into `facultad`(`idfacultad`,`nombre`,`observacion`) values ('FA0001','Ingeniería de Sistemas',NULL),('FA0002','Medicina',NULL),('FA0003','Contabilidad',NULL),('FA0004','Administración',NULL),('FA0005','Derecho',NULL);

/*Table structure for table `inscripcion_curso` */

DROP TABLE IF EXISTS `inscripcion_curso`;

CREATE TABLE `inscripcion_curso` (
  `idmatricula` char(8) DEFAULT NULL,
  `idcurso` char(6) DEFAULT NULL,
  `idalumno` char(8) DEFAULT NULL,
  `vez` int(11) DEFAULT NULL,
  `iddocente` char(8) DEFAULT NULL,
  `promedio` int(11) DEFAULT NULL,
  KEY `detalle_matricula` (`idmatricula`),
  KEY `inscripcion_curso` (`idcurso`),
  KEY `inscripcion_curso_Docente` (`iddocente`),
  KEY `inscripcion_cursoIDalumno` (`idalumno`),
  CONSTRAINT `detalle_matricula` FOREIGN KEY (`idmatricula`) REFERENCES `matricula` (`idmatricula`),
  CONSTRAINT `inscripcion_curso` FOREIGN KEY (`idcurso`) REFERENCES `curso` (`idcurso`),
  CONSTRAINT `inscripcion_cursoIDalumno` FOREIGN KEY (`idalumno`) REFERENCES `alumno` (`idalumno`),
  CONSTRAINT `inscripcion_curso_Docente` FOREIGN KEY (`iddocente`) REFERENCES `docente` (`iddocente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `inscripcion_curso` */

insert  into `inscripcion_curso`(`idmatricula`,`idcurso`,`idalumno`,`vez`,`iddocente`,`promedio`) values ('M00001','091211','A0001',1,'D0006',19),('M00001','091214','A0001',1,'D0003',19),('M00001','091215','A0001',1,'D0001',19),('M00001','091212',NULL,1,'D0006',NULL);

/*Table structure for table `matricula` */

DROP TABLE IF EXISTS `matricula`;

CREATE TABLE `matricula` (
  `idmatricula` char(8) NOT NULL,
  `idalumno` char(6) DEFAULT NULL,
  `idescuela` char(6) DEFAULT NULL,
  `idciclo` char(3) DEFAULT NULL,
  `semestre` char(6) DEFAULT NULL,
  `fecha_matricula` date DEFAULT NULL,
  `total_creditos` int(11) DEFAULT NULL,
  PRIMARY KEY (`idmatricula`),
  KEY `matricula_alumno` (`idalumno`),
  KEY `matricula_escuela` (`idescuela`),
  CONSTRAINT `matricula_alumno` FOREIGN KEY (`idalumno`) REFERENCES `alumno` (`idalumno`),
  CONSTRAINT `matricula_escuela` FOREIGN KEY (`idescuela`) REFERENCES `escuela` (`idescuela`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `matricula` */

insert  into `matricula`(`idmatricula`,`idalumno`,`idescuela`,`idciclo`,`semestre`,`fecha_matricula`,`total_creditos`) values ('M00001','A0001','e00001','1','201202','2012-12-04',0),('M00002','A0003','e00003','3','201202','2012-10-30',20),('M00003','A0004','e00001','2','201202','2012-10-15',18),('M00004','A0002','e00001','4','201202','2012-09-15',20),('M00005','A0005','e00004','5','201202','2012-12-15',16),('M00006','A0002','e00001','4','201202','2012-10-30',20),('M00007','A0002','e00001','4','201202','2012-11-30',20),('M00008','A0002','e00001','4','201202','2012-12-30',20),('M00009','A0002','e00001','4','201202','2012-01-15',20),('M00010','A0004','e00001','2','201202','2012-11-30',18),('M00011','A0004','e00001','2','201202','2012-12-30',18),('M00012','A0004','e00001','2','201202','2012-01-30',18),('M00013','A0004','e00001','2','201202','2012-02-15',18),('M00014','A0001','e00001','1','201202','2012-10-15',0),('M00015','A0001','e00001','1','201202','2012-11-30',0);

/*Table structure for table `pagos` */

DROP TABLE IF EXISTS `pagos`;

CREATE TABLE `pagos` (
  `idpago` char(6) NOT NULL,
  `idalumno` char(6) DEFAULT NULL,
  `semestre` char(6) DEFAULT NULL,
  `tipo_pago` char(8) DEFAULT NULL,
  `identidadf` char(6) DEFAULT NULL,
  `fecha_pago` date DEFAULT NULL,
  PRIMARY KEY (`idpago`),
  KEY `pagos_alumnos` (`idalumno`),
  KEY `pagos_entidadf` (`identidadf`),
  KEY `tipo_pagos` (`tipo_pago`),
  CONSTRAINT `pagos_alumnos` FOREIGN KEY (`idalumno`) REFERENCES `alumno` (`idalumno`),
  CONSTRAINT `pagos_entidadf` FOREIGN KEY (`identidadf`) REFERENCES `entidad_financiera` (`identidadf`),
  CONSTRAINT `tipo_pagos` FOREIGN KEY (`tipo_pago`) REFERENCES `tipo_pago` (`idtipopago`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pagos` */

insert  into `pagos`(`idpago`,`idalumno`,`semestre`,`tipo_pago`,`identidadf`,`fecha_pago`) values ('P00001','A0002','201202','TP000003','EF0002','2012-09-15'),('P00002','A0001','201202','TP000004','EF0004','2012-10-30'),('P00003','A0002','201202','TP000006','EF0005','2012-10-30'),('P00004','A0004','201202','TP000010','EF0002','2012-10-15'),('P00005','A0004','201202','TP000011','EF0002','2012-11-30'),('P00006','A0002','201202','TP000007','EF0003','2012-11-30'),('P00007','A0002','201202','TP000008','EF0001','2012-12-30'),('P00008','A0002','201202','TP000009','EF0001','2012-01-30'),('P00009','A0004','201202','TP000012','EF0002','2012-12-30'),('P00010','A0004','201202','TP000013','EF0005','2012-01-30'),('P00011','A0004','201202','TP000014','EF0002','2012-02-15'),('P00012','A0001','201202','TP000015','EF0001','2012-10-15'),('P00013','A0001','201202','TP000016','EF0002','2012-11-30');

/*Table structure for table `parametros` */

DROP TABLE IF EXISTS `parametros`;

CREATE TABLE `parametros` (
  `codigo1` char(2) DEFAULT NULL,
  `codigo2` char(2) DEFAULT NULL,
  `descripcion` varchar(50) DEFAULT NULL,
  `des_alias` varchar(20) DEFAULT NULL,
  `valor1` int(11) DEFAULT NULL,
  `valor2` decimal(5,2) DEFAULT NULL,
  `valor3` varchar(30) DEFAULT NULL,
  `valor4` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `parametros` */

insert  into `parametros`(`codigo1`,`codigo2`,`descripcion`,`des_alias`,`valor1`,`valor2`,`valor3`,`valor4`) values ('01','01','Correlativo de la tabla Alumno','alumno',5,NULL,NULL,NULL),('01','02','Correlativo de la tabla matricula','matricula',0,NULL,NULL,NULL),('05','01','Valor de IGV','igv',NULL,'0.19',NULL,NULL),('01','03','Correlativo de la tabla pago','pago',0,NULL,NULL,NULL),('01','02','Correlativo de la tabla docente','docente',9,NULL,NULL,NULL),('01','03','Correlativo de la tabla administrativo','administrativo',10,NULL,NULL,NULL);

/*Table structure for table `tipo_pago` */

DROP TABLE IF EXISTS `tipo_pago`;

CREATE TABLE `tipo_pago` (
  `idtipopago` char(8) NOT NULL,
  `descripcion` varchar(30) DEFAULT NULL,
  `fecha_pago` date DEFAULT NULL,
  `monto` double DEFAULT NULL,
  PRIMARY KEY (`idtipopago`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tipo_pago` */

insert  into `tipo_pago`(`idtipopago`,`descripcion`,`fecha_pago`,`monto`) values ('TP000001','Matricula','2012-11-30',215),('TP000002','Pension01','2012-12-30',200),('TP000003','Matricula','2012-09-15',215),('TP000004','Pension02','2012-10-30',200),('TP000005','Pension01','2012-11-30',200),('TP000006','Pension01','2012-10-30',200),('TP000007','Pension02','2012-11-30',200),('TP000008','Pension03','2012-12-30',200),('TP000009','Pension04','2012-01-15',200),('TP000010','Matricula','2012-10-15',215),('TP000011','Pension01','2012-11-30',200),('TP000012','Pension02','2012-12-30',200),('TP000013','Pension03','2012-01-30',200),('TP000014','Pension04','2012-02-15',200),('TP000015','Matricula','2012-10-15',215),('TP000016','Pension01','2012-11-30',200);

/*Table structure for table `usuarios` */

DROP TABLE IF EXISTS `usuarios`;

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `id_pais` int(11) NOT NULL,
  `nombre_usuario` varchar(100) NOT NULL,
  `apellido_usuario` varchar(150) NOT NULL,
  `edad_usuario` int(11) NOT NULL,
  `email_usuario` varchar(180) NOT NULL,
  `observacion_usuario` text NOT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `usuarios` */

insert  into `usuarios`(`id_usuario`,`id_pais`,`nombre_usuario`,`apellido_usuario`,`edad_usuario`,`email_usuario`,`observacion_usuario`) values (1,3,'juan carlos','silva',23,'tibiyacks@gmail.com','gdfgdfgfdgdg');

/* Function  structure for function  `getCodigo` */

/*!50003 DROP FUNCTION IF EXISTS `getCodigo` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `getCodigo`(tabla VARCHAR(20)) RETURNS int(11)
BEGIN
	DECLARE codigo INT DEFAULT 0;
	SELECT valor1 INTO codigo FROM parametros WHERE codigo1="01" AND des_alias=tabla;
	SET codigo = codigo + 1;
	RETURN codigo;
    END */$$
DELIMITER ;

/* Function  structure for function  `getIdmatriculaXSemestre` */

/*!50003 DROP FUNCTION IF EXISTS `getIdmatriculaXSemestre` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `getIdmatriculaXSemestre`(dsemestre char(6),didalumno char(8)) RETURNS char(8) CHARSET utf8
BEGIN
    declare idmat char(8);
	SELECT DISTINCT(ic.idmatricula) into idmat  FROM matricula m, inscripcion_curso ic WHERE m.idmatricula=ic.idmatricula AND m.semestre=dsemestre and m.idalumno=didalumno;
	return idmat;
    END */$$
DELIMITER ;

/* Function  structure for function  `getPromedioPonderado` */

/*!50003 DROP FUNCTION IF EXISTS `getPromedioPonderado` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `getPromedioPonderado`(didalumno char(8), dsemestre char(6)) RETURNS int(11)
BEGIN
	declare promediop int;
	SELECT ROUND(AVG(promedio)) into promediop FROM inscripcion_curso WHERE idmatricula = 
	(SELECT idmatricula FROM matricula WHERE idalumno=didalumno AND semestre=dsemestre);
	return promediop;
    END */$$
DELIMITER ;

/* Function  structure for function  `getTotalCreditosXSemestre` */

/*!50003 DROP FUNCTION IF EXISTS `getTotalCreditosXSemestre` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `getTotalCreditosXSemestre`(didalumno char(8),dsemestre char(6)) RETURNS int(11)
BEGIN
	declare totalp int;
	SELECT  SUM(c.creditos) into totalp FROM alumno a, matricula m, inscripcion_curso ic, curso c, ciclo ci WHERE ic.idmatricula=m.idmatricula AND ic.idcurso=c.idcurso AND m.idciclo=ci.idciclo AND m.idalumno=a.idalumno AND a.idalumno=didalumno AND m.semestre=dsemestre;
	return totalp;
    END */$$
DELIMITER ;

/* Function  structure for function  `getVezCurso` */

/*!50003 DROP FUNCTION IF EXISTS `getVezCurso` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `getVezCurso`(didalumno char(8), didcurso char(8)) RETURNS int(11)
BEGIN
	declare vez INT;
	SELECT COUNT(idcurso) into vez FROM inscripcion_curso WHERE idmatricula = (SELECT idmatricula FROM matricula WHERE idalumno=didalumno)AND idcurso=didcurso;
	set vez = vez+1;
	return vez;
    END */$$
DELIMITER ;

/* Function  structure for function  `setCodigo` */

/*!50003 DROP FUNCTION IF EXISTS `setCodigo` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `setCodigo`(tabla VARCHAR(20), codigo INT) RETURNS char(1) CHARSET utf8
BEGIN
	UPDATE parametros SET valor1 = codigo WHERE codigo1 = "01" AND des_alias = tabla;
	RETURN "v";
    END */$$
DELIMITER ;

/* Procedure structure for procedure `paAdministrativoIngresar` */

/*!50003 DROP PROCEDURE IF EXISTS  `paAdministrativoIngresar` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `paAdministrativoIngresar`(
    IN dnombre VARCHAR(40), 
IN dapellidos VARCHAR(40),
IN dsexo VARCHAR (9),
IN ddni CHAR(8), 
IN dfechanac DATE, 
IN ddir VARCHAR(50), 
IN dtelefono VARCHAR(11), 
IN dcelular VARCHAR(9), 
IN demail VARCHAR(40))
BEGIN
DECLARE numero INT;
	DECLARE codigo VARCHAR(8);
	DECLARE rpta CHAR(1);
	DECLARE dnivel VARCHAR(15);
	
	START TRANSACTION;
		SET numero = getCodigo("administrativo");
		SET codigo = CONCAT("ADM", LPAD(numero, 4,"0"));
		SET dnivel = "administrativo";
		
		INSERT INTO administrativo VALUES(codigo, dnombre, dapellidos, dsexo, ddni, dfechanac, ddir, dtelefono, dcelular, 
		demail, SHA("123456"), 0,"");
		SET rpta= setCodigo("administrativo",numero);
		
	COMMIT;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `paAlumnoActualizar` */

/*!50003 DROP PROCEDURE IF EXISTS  `paAlumnoActualizar` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `paAlumnoActualizar`(
IN dnombre VARCHAR(40), 
IN dapellidos VARCHAR(40),
IN ddni CHAR(8), 
IN dfechanac DATE, 
IN ddir VARCHAR(50), 
IN dtelefono VARCHAR(11), 
IN dcelular VARCHAR(9), 
IN demail VARCHAR(40) ,
in did char(8)     
    )
BEGIN
	
	start transaction;
		update alumno set nombre=dnombre, apellidos=dapellidos, dni=ddni, fecha_nacimiento=dfechanac, direccion=ddir, telefono_fijo=dtelefono, celular=dcelular, email=demail where idalumno=did;
	commit;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `paAlumnoBuscar` */

/*!50003 DROP PROCEDURE IF EXISTS  `paAlumnoBuscar` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `paAlumnoBuscar`(in campo int, in valor varchar(40))
BEGIN
	declare ncampo varchar(50);
	declare consulta text;
	start transaction;
	
		if (campo=1) then
			set ncampo = "idalumno";
		end if;
		if (campo=2) then
			SET ncampo = "nombre";
		end if;
		if (campo=3) then
			SET ncampo = "apellidos";
		end if;
		
		set @consulta = concat("SELECT idalumno, CONCAT(apellidos, ', ', nombre) as nombre_completo, dni, 
				fecha_nacimiento, direccion, telefono_fijo, celular, email FROM alumno WHERE ", ncampo, " LIKE '%", valor, "%'");
		
		PREPARE stmt FROM @consulta;
		EXECUTE stmt;
	commit;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `paAlumnoCambiarClave` */

/*!50003 DROP PROCEDURE IF EXISTS  `paAlumnoCambiarClave` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `paAlumnoCambiarClave`(in id char(8), in claveAntigua varchar(200), in claveNueva varchar(200))
BEGIN
	update alumno set clave=SHA(claveNueva) where idalumno=id and clave=SHA(claveAntigua);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `paAlumnoCursoListar` */

/*!50003 DROP PROCEDURE IF EXISTS  `paAlumnoCursoListar` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `paAlumnoCursoListar`(in didalumno char(8))
BEGIN
	start transaction;
		SELECT c.idcurso AS 'idcurso',  c.nombre AS 'nombreCurso', dm.vez AS 'vezCurso' FROM alumno a, matricula m, detalle_matricula dm, curso c WHERE c.idcurso=dm.idcurso AND dm.idmatricula=m.idmatricula AND m.idalumno=a.idalumno AND m.idalumno=didalumno;
	commit;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `paAlumnoElliminar` */

/*!50003 DROP PROCEDURE IF EXISTS  `paAlumnoElliminar` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `paAlumnoElliminar`(in did char(6))
BEGIN
	delete from alumno where idalumno=did;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `paAlumnoInscribirCursos` */

/*!50003 DROP PROCEDURE IF EXISTS  `paAlumnoInscribirCursos` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `paAlumnoInscribirCursos`(
    in didalumno char(8),
    in dcurso char(6)
    )
BEGIN
	DECLARE numeroVez INT;
	DECLARE rpta CHAR(1);
	declare didmatricula char(8);
	declare diddocente char(8);
	start transaction;
		SELECT idmatricula into didmatricula FROM matricula WHERE idalumno=didalumno AND fecha_matricula = (SELECT MAX(fecha_matricula) FROM matricula WHERE idalumno=didalumno);
		set numeroVez = getVezCurso(didalumno,dcurso);
		SELECT dc.iddocente into diddocente FROM docente_curso dc WHERE dc.idcurso=dcurso;
		
		insert into inscripcion_curso (idmatricula,idcurso,vez,iddocente) values (didmatricula,dcurso,numeroVez,diddocente);
	commit;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `paAlumnoListar` */

/*!50003 DROP PROCEDURE IF EXISTS  `paAlumnoListar` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `paAlumnoListar`()
BEGIN
	select idalumno, concat(apellidos, ", ", nombre) as nombre_completo, dni, fecha_nacimiento, direccion, telefono_fijo, celular, email from alumno;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `paAlumnoListarID` */

/*!50003 DROP PROCEDURE IF EXISTS  `paAlumnoListarID` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `paAlumnoListarID`(in id char(8))
BEGIN
	SELECT idalumno, nombre, apellidos, dni, fecha_nacimiento, direccion, telefono_fijo, celular, email FROM alumno WHERE idalumno=id;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `paAlumnoListarPromediosID` */

/*!50003 DROP PROCEDURE IF EXISTS  `paAlumnoListarPromediosID` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `paAlumnoListarPromediosID`(in didalumno char(8), in dsemestre char(6))
BEGIN
	SELECT ic.idcurso AS 'IDCurso', c.nombre AS 'nombreCurso', c.ciclo AS 'ciclo', c.creditos AS 'creditos', ic.vez AS 'vez', 
	ic.promedio  FROM alumno a, matricula m, inscripcion_curso ic, curso c, ciclo ci WHERE ic.idmatricula=m.idmatricula 
	AND ic.idcurso=c.idcurso AND m.idciclo=ci.idciclo AND m.idalumno=a.idalumno AND a.idalumno=didalumno AND m.semestre=dsemestre;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `paAlumnoModificar` */

/*!50003 DROP PROCEDURE IF EXISTS  `paAlumnoModificar` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `paAlumnoModificar`(
    in dnombre varchar(40),
    in dapellidos varchar(40),
    in dsexo varchar(9),
    in ddni varchar(8),
    in dfecha_nacimiento date,
    in ddireccion varchar(50),
    in dtelefono_fijo char(11),
    in dcelular char(9),
    in demail varchar(40),
    in idalumno char(8)
    )
BEGIN
	update alumno set nombre=dnombre, apellidos=dapellidos, sexo=dsexo, dni=ddni, fecha_nacimiento=dfecha_nacimiento, direccion=ddireccion, telefono_fijo=dtelefono_fijo, celular=dcelular, email=demail where idalumno=didalumno;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `paAlumnosBusqueda` */

/*!50003 DROP PROCEDURE IF EXISTS  `paAlumnosBusqueda` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `paAlumnosBusqueda`(IN dapellidos VARCHAR(40))
BEGIN
	start transaction;
		SELECT idalumno, CONCAT(apellidos, ', ', nombre) as nombre_completo, dni, 
				fecha_nacimiento, direccion, telefono_fijo, celular, email FROM alumno WHERE apellidos LIKE CONCAT('%', dapellidos, '%');
		
		
	commit;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `paAlumnosCursosInscritos` */

/*!50003 DROP PROCEDURE IF EXISTS  `paAlumnosCursosInscritos` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `paAlumnosCursosInscritos`(in didalumno char(8))
BEGIN
	SELECT ic.idcurso AS 'IDCurso', c.nombre AS 'nombreCurso', c.ciclo AS 'ciclo', c.creditos AS 'creditos', ic.vez AS 'vez'  FROM alumno a, matricula m, inscripcion_curso ic, curso c, ciclo ci WHERE ic.idmatricula=m.idmatricula AND ic.idcurso=c.idcurso AND m.idciclo=ci.idciclo AND m.idalumno=a.idalumno AND a.idalumno=didalumno;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `paAlumnosInsertar` */

/*!50003 DROP PROCEDURE IF EXISTS  `paAlumnosInsertar` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `paAlumnosInsertar`(
in dnombre varchar(40), 
in dapellidos varchar(40),
in dsexo varchar (9),
in ddni char(8), 
in dfechanac date, 
in ddir varchar(50), 
in dtelefono varchar(11), 
in dcelular varchar(9), 
in demail varchar(40)   
    )
BEGIN
	DECLARE numero INT;
	DECLARE codigo VARCHAR(6);
	DECLARE rpta CHAR(1);
	declare dnivel varchar(15);
	
	start transaction;
		SET numero = getCodigo("alumno");
		SET codigo = CONCAT("A", LPAD(numero, 4,"0"));
		set dnivel = "alumno";
		
		insert into alumno values(codigo, dnombre, dapellidos, dsexo, ddni, dfechanac, ddir, dtelefono, dcelular, 
		demail, SHA("123456"), 0);
		SET rpta= setCodigo("alumno",numero);
		
	commit;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `paCambiarFoto` */

/*!50003 DROP PROCEDURE IF EXISTS  `paCambiarFoto` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `paCambiarFoto`(
IN tipousuario CHAR(1), 
IN didusuario CHAR(8),
IN foto VARCHAR(200)    
     )
BEGIN
    DECLARE tabla TEXT;
    DECLARE campoid TEXT;
    DECLARE consulta TEXT;
    
	start transaction;
	
	IF (tipousuario="1") THEN
		SET tabla = "alumno";
		SET campoid = "idalumno";
	END IF;
	IF (tipousuario="2") THEN
		SET tabla = "docente";
		SET campoid = "iddocente";
	END IF;
	IF (tipousuario="3") THEN
		SET tabla = "administrativo";
		SET campoid = "idadministrativo";
	END IF;
	
		SET @consulta = CONCAT("UPDATE ", tabla, " SET imagen=", foto, " WHERE ", campoid, "='", didusuario,"'");
		PREPARE stmt FROM @consulta;
		EXECUTE stmt;
	commit;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `paCursoIDListar` */

/*!50003 DROP PROCEDURE IF EXISTS  `paCursoIDListar` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `paCursoIDListar`(in dciclo int)
BEGIN
	SELECT idcurso AS 'idcurso', nombre AS 'nombreCurso', ciclo AS 'ciclo', creditos AS 'creditos' FROM curso WHERE ciclo=dciclo;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `paDocenteAlumnosxCurso` */

/*!50003 DROP PROCEDURE IF EXISTS  `paDocenteAlumnosxCurso` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `paDocenteAlumnosxCurso`(in diddocente char(8), in didcurso char(6))
BEGIN
SELECT a.idalumno, CONCAT(a.nombre, ' ', a.apellidos) AS 'nombre' FROM alumno a, matricula m, 
detalle_matricula dm, docente d, docente_curso dc WHERE a.idalumno=m.idalumno 
AND m.idmatricula=dm.idmatricula AND dc.idcurso=dm.idcurso AND dc.iddocente=diddocente 
AND d.iddocente=dc.iddocente AND dc.idcurso=didcurso;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `paDocenteCursoListar` */

/*!50003 DROP PROCEDURE IF EXISTS  `paDocenteCursoListar` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `paDocenteCursoListar`(in diddocente char(8))
BEGIN
	SELECT c.idcurso, c.nombre, c.ciclo FROM docente d, curso c, docente_curso dc WHERE d.iddocente=dc.iddocente AND c.idcurso=dc.idcurso AND d.iddocente=diddocente;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `paDocenteListaAlmxCurso` */

/*!50003 DROP PROCEDURE IF EXISTS  `paDocenteListaAlmxCurso` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `paDocenteListaAlmxCurso`(in didcurso char(6), in didocente char(8))
BEGIN
	 SELECT ic.idalumno, (SELECT CONCAT(nombre,' ',apellidos) FROM alumno WHERE idalumno=ic.idalumno) AS 'nombre', 
ic.vez, ic.promedio FROM inscripcion_curso ic WHERE iddocente=didocente AND idcurso=didcurso;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `paDocenteListarID` */

/*!50003 DROP PROCEDURE IF EXISTS  `paDocenteListarID` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `paDocenteListarID`(in diddocente char(8))
BEGIN
	SELECT CONCAT(nombre, " ", apellidos) AS 'nombre', dni, fecha_nacimiento, direccion, telefono_fijo, celular, email FROM docente WHERE iddocente=diddocente;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `paDocentesInsertar` */

/*!50003 DROP PROCEDURE IF EXISTS  `paDocentesInsertar` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `paDocentesInsertar`(
IN dnombre VARCHAR(40), 
IN dapellidos VARCHAR(40),
IN dsexo VARCHAR (9),
IN ddni CHAR(8), 
IN dfechanac DATE, 
IN ddir VARCHAR(50), 
IN dtelefono VARCHAR(11), 
IN dcelular VARCHAR(9), 
IN demail VARCHAR(40)  
    )
BEGIN
DECLARE numero INT;
	DECLARE codigo VARCHAR(6);
	DECLARE rpta CHAR(1);
	DECLARE dnivel VARCHAR(15);
	
	START TRANSACTION;
		SET numero = getCodigo("docente");
		SET codigo = CONCAT("D", LPAD(numero, 4,"0"));
		SET dnivel = "docente";
		
		INSERT INTO docente VALUES(codigo, dnombre, dapellidos, dsexo, ddni, dfechanac, ddir, dtelefono, dcelular, 
		demail, SHA("123456"), 0, '');
		SET rpta= setCodigo("docente",numero);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `paHistorialPagos` */

/*!50003 DROP PROCEDURE IF EXISTS  `paHistorialPagos` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `paHistorialPagos`()
BEGIN
SELECT p.idpago, CONCAT(a.nombre,' ',a.apellidos) AS nombre, p.semestre, 
tp.descripcion as 'tipoPago', ef.descripcion as 'entidadF', p.fecha_pago
 FROM pagos p, alumno a, tipo_pago tp, entidad_financiera ef
 WHERE p.idalumno=a.idalumno AND p.tipo_pago=tp.idtipopago AND p.identidadf=ef.identidadf
  ORDER BY p.fecha_pago;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `paKardexCiclo` */

/*!50003 DROP PROCEDURE IF EXISTS  `paKardexCiclo` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `paKardexCiclo`(in didalumno char(8), dciclo char(1))
BEGIN
	 SELECT c.idcurso, c.nombre, c.creditos,
( SELECT vez  FROM inscripcion_curso WHERE idcurso=c.idcurso) AS vez, m.semestre,
(SELECT promedio FROM inscripcion_curso WHERE idcurso=c.idcurso) AS 'promedio',
(SELECT IF(promedio>10,'ABPROBADO','DESAPROBADO') FROM inscripcion_curso WHERE idcurso=c.idcurso) AS 'observacion'
 FROM curso c, inscripcion_curso ic, matricula m WHERE m.idalumno=didalumno AND ciclo=dciclo GROUP BY idcurso;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `paLogin` */

/*!50003 DROP PROCEDURE IF EXISTS  `paLogin` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `paLogin`(
in tipousuario char(1), 
in idusuario char(8),
in clave varchar(200)
    )
BEGIN
    declare tabla text;
    declare campoid text;
    declare consulta text;
    
	if (tipousuario="1") then
		set tabla = "alumno";
		set campoid = "idalumno";
	end if;
	if (tipousuario="2") then
		set tabla = "docente";
		SET campoid = "iddocente";
	end if;
	if (tipousuario="3") then
		set tabla = "administrativo";
		SET campoid = "idadministrativo";
	end if;
	
		set @consulta = concat("SELECT ", campoid, " AS 'id', " "CONCAT(nombre, ' ', apellidos) AS nombre_completo, imagen AS 'imagen' FROM ", tabla, " WHERE ", campoid, "= '", idusuario, "' AND clave = SHA('", clave, "')");
		PREPARE stmt FROM @consulta;
		EXECUTE stmt;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `paMatriculaListar` */

/*!50003 DROP PROCEDURE IF EXISTS  `paMatriculaListar` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `paMatriculaListar`()
BEGIN
	select m.idmatricula, concat(a.apellidos, ", ", a.nombre), m.idescula, m.ciclo, m.semestre, m.fecha_matricula, m.total_creditos from alumno a, matricula m where a.idalumno=m.idalumno;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `paMatriculaRegistrar` */

/*!50003 DROP PROCEDURE IF EXISTS  `paMatriculaRegistrar` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `paMatriculaRegistrar`(
in didalumno char(6), 
in didescuela char(6), 
in dciclo char(3), 
in dsemestre char(3), 
in dfecha date, 
in dtotalcredito int    
    )
BEGIN
    
	DECLARE numero INT;
	DECLARE codigo VARCHAR(6);
	DECLARE rpta CHAR(1);
	
		start transaction;
			SET numero = getCodigo("matricula");
			SET codigo = CONCAT("M", LPAD(numero, 5,"0"));
			
			insert into matricula values(codigo, didalumno, didescuela, dciclo, dsemestre, dfecha, dtotalcredito);
			SET rpta= setCodigo("matricula",numero);
		commit;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `paPagoRegistrar` */

/*!50003 DROP PROCEDURE IF EXISTS  `paPagoRegistrar` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `paPagoRegistrar`(
in  didalumno char(6), 
in dsemestre char(3), 
in dtipopago char(3), 
in dentfinc char(6), 
in dfechapago date   
    )
BEGIN
	DECLARE numero INT;
	DECLARE codigo VARCHAR(6);
	DECLARE rpta CHAR(1);
	
		start transaction;
			SET numero = getCodigo("pagos");
			SET codigo = CONCAT("PG", LPAD(numero, 3,"0"));
			insert into pagos values(codigo, didalumno, dsemestre, dtipopago, dentfinc, dfechapago);
			SET rpta= setCodigo("pagos",numero);
		commit;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `paPagosConsulta` */

/*!50003 DROP PROCEDURE IF EXISTS  `paPagosConsulta` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `paPagosConsulta`(in dcampo int, in dvalor varchar(100))
BEGIN
	    DECLARE tabla TEXT;
    DECLARE vcampo TEXT;
    DECLARE consulta TEXT;
    
	start transaction;
	
		if (dcampo=1) then
			set vcampo = "IDPago";
		end if;
		if (dcampo=2) then
			set vcampo = "nombre";
		end if;
		if (dcampo=3) then
			set vcampo = "fecha_pago";
		end if;	
		
		set @consulta = concat("SELECT * FROM vListaPagos WHERE ", vcampo, " LIKE '%",  dvalor, "%'");
		PREPARE stmt FROM @consulta;
		EXECUTE stmt;
	commit;
    END */$$
DELIMITER ;

/*Table structure for table `valumnodatosbasicosbn` */

DROP TABLE IF EXISTS `valumnodatosbasicosbn`;

/*!50001 DROP VIEW IF EXISTS `valumnodatosbasicosbn` */;
/*!50001 DROP TABLE IF EXISTS `valumnodatosbasicosbn` */;

/*!50001 CREATE TABLE  `valumnodatosbasicosbn`(
 `escuela` varchar(30) ,
 `idalumno` char(8) ,
 `semestre` char(6) ,
 `nombre` varchar(81) ,
 `ciclo` varchar(2) 
)*/;

/*Table structure for table `valumnolista` */

DROP TABLE IF EXISTS `valumnolista`;

/*!50001 DROP VIEW IF EXISTS `valumnolista` */;
/*!50001 DROP TABLE IF EXISTS `valumnolista` */;

/*!50001 CREATE TABLE  `valumnolista`(
 `idalumno` char(8) ,
 `nombre_completo` varchar(82) ,
 `dni` char(8) ,
 `fecha_nacimiento` date ,
 `direccion` varchar(50) ,
 `telefono_fijo` char(11) ,
 `celular` char(9) ,
 `email` varchar(40) 
)*/;

/*Table structure for table `vlistapagos` */

DROP TABLE IF EXISTS `vlistapagos`;

/*!50001 DROP VIEW IF EXISTS `vlistapagos` */;
/*!50001 DROP TABLE IF EXISTS `vlistapagos` */;

/*!50001 CREATE TABLE  `vlistapagos`(
 `IDPago` char(6) ,
 `nombre` varchar(81) ,
 `semestre` char(6) ,
 `tipo_pago` varchar(30) ,
 `descripcion` varchar(50) ,
 `fecha_pago` date 
)*/;

/*View structure for view valumnodatosbasicosbn */

/*!50001 DROP TABLE IF EXISTS `valumnodatosbasicosbn` */;
/*!50001 DROP VIEW IF EXISTS `valumnodatosbasicosbn` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `valumnodatosbasicosbn` AS (select `e`.`nombre` AS `escuela`,`a`.`idalumno` AS `idalumno`,`m`.`semestre` AS `semestre`,concat(`a`.`nombre`,' ',`a`.`apellidos`) AS `nombre`,`c`.`abreviatura` AS `ciclo` from (((`alumno` `a` join `matricula` `m`) join `escuela` `e`) join `ciclo` `c`) where ((`a`.`idalumno` = `m`.`idalumno`) and (`a`.`cicloActual` = `m`.`idciclo`) and (`a`.`cicloActual` = `c`.`idciclo`) and (`m`.`idescuela` = `e`.`idescuela`))) */;

/*View structure for view valumnolista */

/*!50001 DROP TABLE IF EXISTS `valumnolista` */;
/*!50001 DROP VIEW IF EXISTS `valumnolista` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `valumnolista` AS (select `alumno`.`idalumno` AS `idalumno`,concat(`alumno`.`apellidos`,', ',`alumno`.`nombre`) AS `nombre_completo`,`alumno`.`dni` AS `dni`,`alumno`.`fecha_nacimiento` AS `fecha_nacimiento`,`alumno`.`direccion` AS `direccion`,`alumno`.`telefono_fijo` AS `telefono_fijo`,`alumno`.`celular` AS `celular`,`alumno`.`email` AS `email` from `alumno`) */;

/*View structure for view vlistapagos */

/*!50001 DROP TABLE IF EXISTS `vlistapagos` */;
/*!50001 DROP VIEW IF EXISTS `vlistapagos` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vlistapagos` AS (select `p`.`idpago` AS `IDPago`,concat(`a`.`nombre`,' ',`a`.`apellidos`) AS `nombre`,`p`.`semestre` AS `semestre`,(select `tipo_pago`.`descripcion` AS `descripcion` from `tipo_pago` where (`tipo_pago`.`idtipopago` = `p`.`tipo_pago`)) AS `tipo_pago`,`ef`.`descripcion` AS `descripcion`,`p`.`fecha_pago` AS `fecha_pago` from ((`pagos` `p` join `alumno` `a`) join `entidad_financiera` `ef`) where ((`p`.`idalumno` = `a`.`idalumno`) and (`p`.`identidadf` = `ef`.`identidadf`))) */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
