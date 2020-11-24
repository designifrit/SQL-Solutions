
USE CONCESIONARIO
GO


/* Permite establecer varias condiciones con la cláusula Where */
/* Not permite filtrar la información a través de negación. funciona con like y In*/

SELECT * FROM Turno

SELECT * FROM Turno WHERE fechaTurno between '20200503' and '20201230'
SELECT * FROM Turno WHERE estado between 1 and 7
