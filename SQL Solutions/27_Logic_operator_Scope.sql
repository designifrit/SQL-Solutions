
USE CentroMedico
GO


SELECT * FROM Paciente
WHERE apellido = 'Pere%' and (nombre = 'Carlos' or idPaciente = 0 6) and idPais not like 'COL'
