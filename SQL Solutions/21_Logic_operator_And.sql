
USE CONCESIONARIO
GO


/* Permite establecer varias condiciones con la cl�usula Where */

SELECT * FROM Paciente

SELECT * FROM Paciente WHERE apellido = 'Perez' and nombre = 'Roberto' and idPaciente = '6'
