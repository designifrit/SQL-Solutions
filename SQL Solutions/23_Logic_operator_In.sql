
USE CONCESIONARIO
GO


/* Permite establecer varias condiciones con la cláusula Where */
/* In permite filtrar un grupo de valores */

SELECT * FROM Turno

SELECT * FROM Turno WHERE estado in(1 ,3 ,5)
SELECT * FROM Paciente WHERE apellido in('Perez', 'Ramirez', 'Gonzalez')
