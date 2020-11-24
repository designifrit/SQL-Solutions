
USE CentroMedico
GO


/* Cl�usula Group by agrupa con funciones de agregado (B�squeda mas avanzada y r�pida) */

SELECT apellido, max(idPaciente) as 'ID' FROM Paciente
GROUP BY apellido


SELECT idPaciente, min(apellido) as 'Apellido' FROM Paciente
GROUP BY idPaciente
