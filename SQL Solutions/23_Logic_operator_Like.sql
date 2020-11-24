
USE CONCESIONARIO
GO


/* Permite establecer varias condiciones con la cláusula Where */
/* Like ermite usar caracteres de comodín para facilitar la busqueda */

SELECT * FROM Paciente

SELECT * FROM Paciente WHERE nombre like 'Rober%'
SELECT * FROM Paciente WHERE nombre like '%ober%'