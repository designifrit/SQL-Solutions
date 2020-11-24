
USE CentroMedico
GO

/* Crear tablas con llave primaria */
/* El campo identity permite esttablecer enumeración automática */
/* Los nombres de la llave primaria y llave secundaria deben ser iguales para evittar confusiones */

-- Crear tabla Concepto

CREATE TABLE Concepto(
	idConcepto tinyint identity(1,1) not null,
	descripcion varchar(100)
	CONSTRAINT pk_idConcepto PRIMARY KEY(idConcepto)
)
SELECT * FROM Concepto


-- Crear tabla Especialidad

CREATE TABLE Especialidad(
	idEspecialidad int identity(1,1) not null,
	especialidad varchar(30) null
	CONSTRAINT pk_Especialidad PRIMARY KEY(idEspecialidad)
)
SELECT * FROM Especialidad


-- Crear tabla Historia

CREATE TABLE Historia(
	idHistoria int identity(1,1) not null,
	fechaHistoria datetime null,
	observacion varchar(500) null
	CONSTRAINT pk_Historia PRIMARY KEY(idHistoria)
)
SELECT * FROM Historia


-- Crear tabla HistoriaPaciente

CREATE TABLE HistoriaPaciente(
	idHistoria int not null,
	idPaciente int not null,
	idMedico int not null
	PRIMARY KEY(idHistoria, idPaciente, idMedico)
)
SELECT * FROM HistoriaPaciente


-- Crear tabla Medico

CREATE TABLE Medico(
	idMedico int identity(1,1) not null,
	nombre varchar(50) not null,
	apellido varchar(50) not null
	CONSTRAINT pk_Medico PRIMARY KEY(idMedico)
)
SELECT * FROM Medico


-- Crear tabla MedicoEspecialidad

CREATE TABLE MedicoEspecialidad(
	idMedico int not null,
	idEspecialidad int not null,
	Descripcion varchar(50)
	PRIMARY KEY(idMedico, idEspecialidad)
)
SELECT * FROM MedicoEspecialidad


-- Crear tabla Paciente

CREATE TABLE Paciente(
	idPaciente int identity(1,1) not null,
	nombre varchar(50) not null,
	apellido varchar(50) null,
	fechaNacimiento date null,
	domicilio varchar(50) null,
	idPais char(3) not null,
	telefono varchar(20) null,
	email varchar(30) null,
	observaciones varchar(1000) null,
	fechaAlta datetime not null
	CONSTRAINT pk_Paciente PRIMARY KEY(idPaciente)
)

-- Inserta la culumna DNI en la tabla Paciente
ALTER TABLE paciente
ADD dni varchar(20) null

SELECT * FROM Paciente


-- Crear tabla Pago

CREATE TABLE Pago(
	idPago int identity(1,1) not null,
	idConcepto tinyint not null,
	fecha datetime not null,
	monto money not null,
	idEstado tinyint not null,
	observacion varchar(1000) null
	CONSTRAINT pk_Pago PRIMARY KEY(idPago)
)
SELECT * FROM Pago


-- Crear tabla PagoPaciente

CREATE TABLE PagoPaciente(
	idPago int not null,
	idPaciente int not null,
	idTurno int not null
	PRIMARY KEY(idPago, idPaciente, idTurno)
)
SELECT * FROM PagoPaciente


-- Crear tabla Pais

CREATE TABLE Pais(
	idPais char(3) not null,
	pais varchar(30) null
	CONSTRAINT pk_Pais PRIMARY KEY(idPais)
)
SELECT * FROM Pais


-- Crear tabla Turno

CREATE TABLE Turno(
	idTurno int identity(1,1) not null,
	fechaTurno datetime null,
	idEstado int not null,
	observacion varchar(100)
	CONSTRAINT pk_Turno PRIMARY KEY(idTurno)
)
SELECT * FROM Turno


-- Crear tabla TurnoEstado

CREATE TABLE Estado(
	idEstado smallint not null,
	descripcion varchar(50) null
	CONSTRAINT pk_Estado PRIMARY KEY(idEstado)
)
SELECT * FROM Estado


-- Crear tabla TurnoPaciente

CREATE TABLE TurnoPaciente(
	idTurno int not null,
	idPaciente int not null,
	idMedico int not null
	PRIMARY KEY(idTurno, idPaciente, idMedico)
)
SELECT * FROM TurnoPaciente