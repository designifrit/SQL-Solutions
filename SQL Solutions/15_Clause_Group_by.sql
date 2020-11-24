
USE CentroMedico
GO


/* Cláusula Group by agrupa con funciones de agregado (Búsqueda mas avanzada y rápida) */
/* La cláusula Group by solo funciona sí se especifica en Select que datos debe devolver con Group by */

SELECT apellido FROM Paciente
GROUP BY apellido