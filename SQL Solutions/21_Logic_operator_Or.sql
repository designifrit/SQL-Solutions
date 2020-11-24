
USE CONCESIONARIO
GO


/* Permite establecer varias condiciones con la cláusula Where */

SELECT * FROM Paciente

SELECT * FROM Paciente WHERE apellido = 'Perez' or nombre = 'Roberto' or idPaciente = '6'
