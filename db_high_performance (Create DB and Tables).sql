CREATE DATABASE db_high_performance;
USE db_high_performance;

create TABLE Propietario (
  dni bigint(10) not null,
  nombre varchar(50) not null,
  apellido varchar(50) not null,
  direccion varchar(50) not null,
  telefono varchar(50) not null,
  PRIMARY KEY(dni)
);

CREATE TABLE Empleado (
  id bigint(10) AUTO_INCREMENT,
  nombre varchar(50) not NULL,
  apellido varchar(50) not NULL,
  telefono varchar(15) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE OrdenDeTrabajo(
	id bigint(10) auto_increment,
    patente varchar(20) not null,
    marca varchar(30) not null,
    modelo varchar(30) not null,
    fecha datetime not null,
    detalle_falla varchar(100) not null,
    estado bit not null,
    cantHoras int not null,
    idPropietario bigint(10) not null,
    idEmpleado bigint(10) not null,
    PRIMARY KEY(id),
    FOREIGN KEY(idPropietario) REFERENCES Propietario(dni),
    FOREIGN KEY(idEmpleado) REFERENCES Empleado(id)
);

CREATE TABLE Repuesto (
  id bigint(10) AUTO_INCREMENT,
  nombre varchar(50) not null,
  stock int not null,
  precio float not null,
  PRIMARY KEY (id)
);


CREATE TABLE OrdenRepuesto(
  id bigint(10) auto_increment,
  idRepuesto bigint(10),
  idOrdenDeTrabajo bigint(10) not null,
  cantRepuestos int not null,
  PRIMARY KEY(id),
  FOREIGN KEY (idRepuesto) REFERENCES Repuesto(id),
  FOREIGN KEY (idOrdenDeTrabajo) REFERENCES OrdenDeTrabajo(id)
)