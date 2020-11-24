
USE CentroMedico
GO


/* Filtrar con la cláusula Where */

SELECT * FROM Paciente

UPDATE Paciente SET idPais = 'COL'
WHERE idPaciente = 5
