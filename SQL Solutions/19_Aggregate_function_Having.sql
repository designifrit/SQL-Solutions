
USE CentroMedico
GO


/* Funciona con la Cláusula Group by, es similar a Where pero se aplica sobre un conjunto de registros */
/* Seleccionar estado de la tabla turno, agrupar por el campor estado donde estado es igual a 2 */

SELECT * FROM Turno

SELECT estado FROM Turno
GROUP BY estado HAVING estado = 2
