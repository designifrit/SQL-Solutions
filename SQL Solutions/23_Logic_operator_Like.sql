
USE CONCESIONARIO
GO


/* Permite establecer varias condiciones con la cl�usula Where */
/* Like ermite usar caracteres de comod�n para facilitar la busqueda */

SELECT * FROM Paciente

SELECT * FROM Paciente WHERE nombre like 'Rober%'
SELECT * FROM Paciente WHERE nombre like '%ober%'