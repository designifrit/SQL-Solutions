
USE CONCESIONARIO
GO


/* Permite establecer varias condiciones con la cl�usula Where */
/* Not permite filtrar la informaci�n a trav�s de negaci�n. funciona con like y In*/

SELECT * FROM Paciente

SELECT * FROM Paciente WHERE nombre not like '%ober%'
SELECT * FROM Paciente WHERE apellido not in('Perez', 'Ramirez', 'Gonzalez')