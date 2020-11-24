
USE CentroMedico
GO


/* En este caso devuelve los 2 primeros registros */

SELECT TOP 2 * FROM Paciente

/* Devuelve los 5 primeros registros que cumplen condición */

SELECT TOP 5 * FROM Paciente
WHERE apellido = 'Arias'