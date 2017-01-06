USE db_high_performance;

INSERT INTO Propietario VALUES (34584999,'Juan Carlos','Perez','La Rioja 2197','221234684545'),
							   (34254757,'Federico','Diaz Cano','492 y Camino Centenario','221424545'),
                               (35454842,'Lucas','Albo','Calle 38 y 24','221454754'),
                               (36577512,'Jorge','Mendoza','Calle 35 y 4','11584638'),
                               (33857210,'Leandro','Goffrit','San Juan y Entre Rios','11875721'),
                               (40887635,'Carlos','Perez','Jujuy y Corrientes','2297518572');
                               
INSERT INTO Empleado (nombre,apellido,telefono) 
			VALUES ('Leandro','Gomez','112454545'),
				   ('Jose Luis','Ramirez','2249653284'),
                   ('Juan Carlos','Lopez','2345235'),
                   ('Leandro','Baldassarre','115465745'),
                   ('Alberto','Sosa','35743215');
                                                       
INSERT INTO Repuesto (nombre,stock,precio) 
	   VALUES ('Bujia',50,150),
			  ('Burlete',50,75),
              ('Carburador',50,3500),
              ('Amortiguador',50,1200),
              ('Volante Sport',50,1900),
              ('Bobina de Encendido',50,850),
              ('Distribuidor',50,650),
			  ('Embrague',50,650),
              ('Inyector',50,4600),
              ('Ruleman',50,350),
              ('Faros',50,5900);
								
INSERT INTO OrdenDeTrabajo (patente,marca,modelo,fecha,detalle_falla,estado,cantHoras,idPropietario,idEmpleado) 
					VALUES ('AVE-354','RENAULT','CLIO','2015-12-31','Choque frontal contra un arbol',true,9,34254757,1),
						   ('RYE-871','VW','BORA','2007-05-20','No arranca',false,2,34584999,1),
                           ('CWE-678','PEUGEOT','207','2016-01-05','No andan las luces',true,3,35454842,2),
                           ('PMM-572','FORD','MONDEO','2013-07-18','No enciende',false,5,36577512,3),
                           ('AET-875','CHEVROLET','AGILE','2006-06-19','No cierran bien las puertas',false,0,33857210,2),
                           ('YIT-357','DODGE','CHARGER','2012-07-08','Prepararlo para una carrera',true,17,40887635,3);
                           
INSERT INTO OrdenRepuesto (idRepuesto,idOrdenDeTrabajo,cantRepuestos)
				   VALUES (3,1,1),(7,1,1),
						  (11,1,2),(9,1,2),
                          (1,2,8),(1,3,2),
                          (11,3,2),(1,4,8),
                          (6,4,1),(8,4,1),
                          (2,5,8),(3,6,1),
                          (5,6,1),(9,6,1),
                          (7,6,1),(6,6,1),
                          (4,6,4),(11,6,4);
                           