
USE CentroMedico
GO


/* Se aplica directamente sobre el campo a Sumar */

SELECT sum(idPaciente), apellido FROM Paciente
GROUP BY apellido