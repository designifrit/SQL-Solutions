
USE CentroMedico
GO


/* Cl�usula Group by agrupa con funciones de agregado (B�squeda mas avanzada y r�pida) */
/* La cl�usula Group by solo funciona s� se especifica en Select que datos debe devolver con Group by */

SELECT apellido FROM Paciente
GROUP BY apellido