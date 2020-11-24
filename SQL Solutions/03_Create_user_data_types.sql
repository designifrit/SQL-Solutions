

USE CentroMedico
GO

/* Permite establecer el tipo de datos (Tipo de datos definido por el usuario) y asignarlo directamente
en la tabla como un valor preestablecido, para evitar que otro usuario modifique el tipo de dato de una tabla */

/* Ruta = programmability > Types > User-Defined Data types*/

CREATE TYPE concepto FROM tinyint not null
CREATE TYPE estado FROM smallint not null
CREATE TYPE historia FROM int not null
CREATE TYPE medico FROM int not null
CREATE TYPE observacion FROM varchar(1000)
CREATE TYPE paciente FROM int not null
CREATE TYPE pago FROM int not null
CREATE TYPE pais FROM char(3) not null
CREATE TYPE turno FROM int not null
CREATE TYPE especialidad FROM int not null
