
USE CONCESIONARIO
GO


/* Permite establecer varias condiciones con la cláusula Where */
/* Not permite filtrar la información a través de negación. funciona con like y In*/

SELECT * FROM Paciente

SELECT * FROM Paciente WHERE nombre not like '%ober%'
SELECT * FROM Paciente WHERE apellido not in('Perez', 'Ramirez', 'Gonzalez')