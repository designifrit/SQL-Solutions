
USE CentroMedico
GO

/* Permite establecer la relación entre tablas; esto permite romper la relación de muchos a muchos y
la establece de uno a muchos*/
/* La llave secundaria se establece desde la tabla que tiene la llave secundaria, nunca desde la tabla principal */
/* Además la llave secundaria no debe tener identity, ya que la llave primaria es la que carga el dato*/


-- Agregar Foreign keys de la tabla HistoriaPaciente

ALTER TABLE HistoriaPaciente
ADD FOREIGN KEY(idHistoria) REFERENCES Historia(idHistoria)
ALTER TABLE HistoriaPaciente
ADD FOREIGN KEY(idPaciente) REFERENCES Paciente(idPaciente)
ALTER TABLE HistoriaPaciente
ADD FOREIGN KEY(idMedico) REFERENCES Medico(idMedico)


-- Agregar Foreign keys de la tabla MedicoEspecialidad

ALTER TABLE MedicoEspecialidad
ADD FOREIGN KEY(idMedico) REFERENCES Medico(idMedico)
ALTER TABLE MedicoEspecialidad
ADD FOREIGN KEY(idEspecialidad) REFERENCES Especialidad(idEspecialidad)


-- Agregar Foreign keys de la tabla Paciente

ALTER TABLE Paciente
ADD FOREIGN KEY(idPais) REFERENCES Pais(idPais)


-- Agregar Foreign keys de la tabla Pago

ALTER TABLE Pago
ADD FOREIGN KEY(idConcepto) REFERENCES Concepto(idConcepto)
ALTER TABLE Pago
ADD FOREIGN KEY(idEstado) REFERENCES Estado(idEstado)


-- Agregar Foreign keys de la tabla PagoPaciente

ALTER TABLE PagoPaciente
ADD FOREIGN KEY(idPago) REFERENCES Pago(idPago)
ALTER TABLE PagoPaciente
ADD FOREIGN KEY(idPaciente) REFERENCES Paciente(idPaciente)
ALTER TABLE PagoPaciente
ADD FOREIGN KEY(idTurno) REFERENCES Turno(idTurno)


-- Agregar Foreign keys de la tabla Turno

ALTER TABLE Turno
ADD FOREIGN KEY(idEstado) REFERENCES Estado(idEstado)


-- Agregar Foreign keys de la tabla TurnoPaciente

ALTER TABLE TurnoPaciente
ADD FOREIGN KEY(idTurno) REFERENCES Turno(idTurno)
ALTER TABLE TurnoPaciente
ADD FOREIGN KEY(idPaciente) REFERENCES Paciente(idPaciente)
ALTER TABLE TurnoPaciente
ADD FOREIGN KEY(idMedico) REFERENCES Medico(idMedico)
