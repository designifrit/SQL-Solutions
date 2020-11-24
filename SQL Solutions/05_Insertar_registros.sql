
USE CentroMedico
GO


-- Insertar registros en tabla Concepto

INSERT INTO Concepto VALUES('Tratamiento dermatológico')
INSERT INTO Concepto VALUES('Cirugia')
INSERT INTO Concepto VALUES('Radiografía')
INSERT INTO Concepto VALUES('Terapia')

SELECT * FROM Concepto


-- Insertar registros en tabla Especialidad

INSERT INTO Especialidad VALUES('Anestesiología')
INSERT INTO Especialidad VALUES('Cardiología')
INSERT INTO Especialidad VALUES('Epidemiología')
INSERT INTO Especialidad VALUES('Hepatología')

SELECT * FROM Especialidad


-- Insertar registros en tabla Historia

INSERT INTO Historia VALUES('20200607', '')
INSERT INTO Historia VALUES('20200415', '')
INSERT INTO Historia VALUES('20200912', 'Pendiente radiografía')
INSERT INTO Historia VALUES('20200102', 'Solicitó historial médico para cirugía')

SELECT * FROM Historia


-- Insertar registros en tabla HistoriaPaciente

INSERT INTO HistoriaPaciente VALUES(5, 5, 5)
INSERT INTO HistoriaPaciente VALUES(6, 6, 6)
INSERT INTO HistoriaPaciente VALUES(7, 7, 7)
INSERT INTO HistoriaPaciente VALUES(8, 8, 8)

SELECT * FROM HistoriaPaciente


-- Insertar registros en tabla Medico

INSERT INTO Medico VALUES('Juan', 'Espinosa')
INSERT INTO Medico VALUES('Carla', 'Santacruz')
INSERT INTO Medico VALUES('David', ' Trujillo')
INSERT INTO Medico VALUES('Estefany', 'Murillo')

SELECT * FROM Medico


-- Insertar registros en tabla MedicoEspecialidad

INSERT INTO MedicoEspecialidad VALUES(1, 4, 'Jefe de urgencias')
INSERT INTO MedicoEspecialidad VALUES(4, 3, 'Médico dermatología')
INSERT INTO MedicoEspecialidad VALUES(3, 1, 'Médico citas prioritarias')
INSERT INTO MedicoEspecialidad VALUES(2, 2, 'Director del hospital GH')

SELECT * FROM MedicoEspecialidad


-- Insertar registros en tabla Paciente

INSERT INTO Paciente VALUES('Yeison', 'Arias', '19810915', 'Cr 12 # 3265', 'COL', 2558945, 'inv@dominio.com', 'Plan integrado salud', '20200314', '102355617')
INSERT INTO Paciente VALUES('Ana', 'Palacios', '19881129', 'Cll 54 # 33 24', 'ARG', 3256411, 'wyh@dominio.com', 'Plan Premium', '20200624', '104532378')
INSERT INTO Paciente VALUES('Fernando', 'Betancourt', '19840622', 'Cr 23 # 12 A 25', 'PER', 3127845, 'lol@dominio.com', 'Salud Prepagada', '20200511', '10355567')
INSERT INTO Paciente VALUES('Yefferson', 'Posada', '19850307', 'Cll 02 sur # 24 15', 'MEX', 2458531, 'smd@dominio.com', 'Plan integrado salud', '20201010', '1023457869')

SELECT * FROM Paciente


-- Insertar registros en tabla Pago

INSERT INTO Pago VALUES(1, '20200412', 120900, 1, 'Cheque')
INSERT INTO Pago VALUES(2, '20201015', 250300, 3, 'Tarjeta débito')
INSERT INTO Pago VALUES(3, '20200730', 90500, 2, 'Tarjeta crédito')
INSERT INTO Pago VALUES(3, '20200422', 45000, 0, 'En efectivo')

SELECT * FROM Pago


-- Insertar registros en tabla PagoPaciente

INSERT INTO PagoPaciente VALUES(5, 5, 5)
INSERT INTO PagoPaciente VALUES(6, 6, 6)
INSERT INTO PagoPaciente VALUES(7, 7, 7)
INSERT INTO PagoPaciente VALUES(1, 5, 5)

SELECT * FROM PagoPaciente


-- Insertar registros en tabla Pais

INSERT INTO Pais VALUES('COL', 'Colombia')
INSERT INTO Pais VALUES('PER', 'Perú')
INSERT INTO Pais VALUES('MEX', 'México')
INSERT INTO Pais VALUES('ARG', 'Argentina')

SELECT * FROM Pais


-- Insertar registros en tabla Turno

insert into Turno values ( '20200302 13:00', 0 , '')
insert into Turno values ( '20200303 14:00', 0 , '')
insert into Turno values ( '20200303 15:30', 1 , 'El paciente ha sido atendido')
insert into Turno values ( '20200305 18:00', 2 , 'El paciente llamó para cancelar el turno')

SELECT * FROM Turno


-- Insertar registros en tabla TurnoEstado

INSERT INTO Estado VALUES(0, 'Pendiente')
INSERT INTO Estado VALUES(1, 'Realizado')
INSERT INTO Estado VALUES(2, 'Cancelado')
INSERT INTO Estado VALUES(3, 'Anulado')

SELECT * FROM Estado


-- Insertar registros en tabla TurnoPaciente

INSERT INTO TurnoPaciente VALUES(5, 5, 5)
INSERT INTO TurnoPaciente VALUES(6, 6, 6)
INSERT INTO TurnoPaciente VALUES(7, 7, 7)
INSERT INTO TurnoPaciente VALUES(8, 8, 8)

SELECT * FROM TurnoPaciente

