
USE CentroMedico
GO

INSERT INTO Paciente VALUES ('', 'Alejandro', 'Orozco', '17-03-1986', 'Cr 77 # 77 77', 'ÇOL', 3216548, 'user@domain.com', 'Que bacano!', 'N/A')

SELECT * FROM Paciente

-- Verifica IDENTITTY y establece el indexado nuevamente desde 0
DBCC CHECKIDENT (Pago, RESEED, 0)
