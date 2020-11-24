
USE CentroMedico
GO


/* Inserta contenido en la tabla Paciente. El orden de insercción debe ser en el mismo orden de las columnas */

INSERT INTO Paciente(nombre, apellido, fechaNacimiento, domicilio, idPais, telefono, email, observaciones, fechaAlta,dni)
VALUES('Diana', 'Arenas', '1975', 'Cll 43 A # 23 43, Apto. 14', 'COL', 3214598, 'wer@dominio.com', 'Solicitó cambio de EPS', '20191226', 10456984)

SELECT * FROM Paciente