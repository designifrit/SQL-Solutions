
USE CentroMedico
GO


CREATE PROCEDURE SP_Paciente(
	@idPaciente int
)AS
	SELECT * FROM Paciente
	WHERE idPaciente = @idPaciente
GO
