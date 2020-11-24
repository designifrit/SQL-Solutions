
USE CentroMedico
GO


/* Cláusula Group by agrupa con funciones de agregado (Búsqueda mas avanzada y rápida) */

SELECT apellido, max(idPaciente) as 'ID' FROM Paciente
GROUP BY apellido


SELECT idPaciente, min(apellido) as 'Apellido' FROM Paciente
GROUP BY idPaciente
