/*
creacion de tabla SQL
*/

CREATE TABLE registros (
	id INT(10) NOT NULL AUTO_INCREMENT,
	nombre VARCHAR(40) NOT NULL COLLATE 'latin1_swedish_ci',
	apellido VARCHAR(40) NOT NULL COLLATE 'latin1_swedish_ci',
	edad TINYINT(2) NOT NULL,
	fecha TIMESTAMP NOT NULL DEFAULT (now()) ON UPDATE CURRENT_TIMESTAMP,
	provincia VARCHAR(30) `#23544`NOT NULL COLLATE 'latin1_swedish_ci',
	PRIMARY KEY (id) USING BTREE
)
COMMENT='Tarea Obligatoria Unidad n°11\r'
COLLATE='latin1_spanish_ci'
ENGINE=InnoDB
;


/* 
Correccion edad
*/

ALTER TABLE registros CHANGE COLUMN edad edad TINYINT(2) NOT NULL AFTER apellido;
	
/*
Visualizar tabla
*/

DESCRIBE registros;

/*
Agregado de 5 Registros
*/

INSERT INTO registros (nombre,apellido,edad,provincia)
					VALUES ('Aldana','Rodriguez',20,'San Luis'),('Berta','Gomez',53,'La Rioja'),('Carol','Quesada',31,'Jujuy'),('Luis','Palacios',35,'Formosa'),('Juan Pablo','Coldman',28,'Buenos Aires');
					
/*Ver datos completos de la Tabla*/

SELECT * FROM registros;












