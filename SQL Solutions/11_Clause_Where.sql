
USE CentroMedico
GO


/* Filtrar con la cl�usula Where */

SELECT * FROM Paciente

UPDATE Paciente SET idPais = 'COL'
WHERE idPaciente = 5
