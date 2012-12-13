DELIMITER $$

USE `sist_uni`$$

DROP PROCEDURE IF EXISTS `paMatriculaRegistrar`$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `paMatriculaRegistrar`(
IN didalumno CHAR(6), 
IN didescuela CHAR(6), 
IN dciclo CHAR(3), 
IN dsemestre CHAR(3), 
IN dfecha DATE, 
IN dtotalcredito INT    
    )
BEGIN
    
	DECLARE numero INT;
	DECLARE codigo VARCHAR(6);
	DECLARE rpta CHAR(1);
	
		START TRANSACTION;
			SET numero = getCodigo("matricula");
			SET codigo = CONCAT("M", LPAD(numero, 5,"0"));
			
			INSERT INTO matricula VALUES(codigo, didalumno, didescuela, dciclo, dsemestre, dfecha, dtotalcredito);
			SET rpta= setCodigo("matricula",numero);
		COMMIT;
    END$$

DELIMITER ;