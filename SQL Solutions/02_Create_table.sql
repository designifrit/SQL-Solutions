
USE CentroMedico
GO


CREATE TABLE Concepto(
	idConcepto tinyint identity(1,1) not null,
	descripcion varchar(100)
	CONSTRAINT pk_idConcepto PRIMARY KEY(idConcepto)
)

CREATE TABLE Especialidad(
	idEspecialidad int identity(1,1) not null,
	especialidad varchar(30) null
	CONSTRAINT pk_Especialidad PRIMARY KEY(idEspecialidad)
)

CREATE TABLE Historia(
	idHistoria int identity(1,1) not null,
	fechaHistoria datetime null,
	observacion varchar(500) null
	CONSTRAINT pk_Historia PRIMARY KEY(idHistoria)
)

CREATE TABLE HistoriaPaciente(
	idHistoria int not null,
	idPaciente int not null,
	idMedico int not null
	PRIMARY KEY(idHistoria, idPaciente, idMedico)
)

CREATE TABLE Medico(
	idMedico int identity(1,1) not null,
	nombre varchar(50) not null,
	apellido varchar(50) not null
	CONSTRAINT pk_Medico PRIMARY KEY(idMedico)
)

CREATE TABLE MedicoEspecialidad(
	idMedico int not null,
	idEspecialidad int not null,
	Descripcion varchar(50)
	PRIMARY KEY(idMedico, idEspecialidad)
)

CREATE TABLE Paciente(
	idPaciente int not null,
	nombre varchar(50) not null,
	apellido varchar(50) null,
	fechaNacimiento date null,
	domicilio varchar(50) null,
	idPais char(3) null,
	telefono varchar(20) null,
	email varchar(30) null,
	observaciones varchar(1000) null,
	fechaAlta datetime not null
	CONSTRAINT pk_Paciente PRIMARY KEY(idPaciente)
)

CREATE TABLE Pago(
	idPago int identity(1,1) not null,
	concepto tinyint not null,
	fecha datetime not null,
	monto money not null,
	estado tinyint not null,
	observacion varchar(1000) null
	CONSTRAINT pk_Pago PRIMARY KEY(idPago)
)

CREATE TABLE PagoPaciente(
	idPago int not null,
	idPaciente int not null,
	idTurno int not null
	PRIMARY KEY(idPago, idPaciente, idTurno)
)

CREATE TABLE Pais(
	idPais char(3) not null,
	pais varchar(30) null
	CONSTRAINT pk_Pais PRIMARY KEY(idPais)
)

CREATE TABLE Turno(
	idTurno int identity(1,1) not null,
	fechaTurno datetime null,
	estado smallint null,
	observacion varchar(100)
	CONSTRAINT pk_Turno PRIMARY KEY(idTurno)
)

CREATE TABLE TurnoEstado(
	idTurnoEstado int not null,
	descripcion varchar(50) null
	CONSTRAINT pk_TurnoEstado PRIMARY KEY(idTurnoEstado)
)

CREATE TABLE TurnoPaciente(
	idTurno int not null,
	idPaciente int not null,
	idMedico int not null
	PRIMARY KEY(idTurno, idPaciente, idMedico)
)
