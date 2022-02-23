
/* Se crea el Stored Procedure con una variable de solo numeros, para cuando se agregue
una edad y sea ejecutado, indique la cantidad de personas que poseen dicha edad */
CREATE PROCEDURE cantidad  
                        @cantidad INT
AS

/* Se crea la tabla solicitada con sus respectivas columnas */

CREATE TABLE Persons(id INT PRIMARY KEY IDENTITY (1,1) NOT NULL,
                        Name VARCHAR(5) NULL,
                        Age INT NULL
                        )

/* Se ingresan los valores indicados a las respectivas columnas */

INSERT INTO Persons(Name, Age)
VALUES ('Bob', 21),
        ('Sam', 19),
        ('Jill', 18),
        ('Jim', 21),
        ('Sally', 19),
        ('Jess', 20),
        ('Will', 21)

        SELECT COUNT (*) AS Age
        FROM Persons
        WHERE Age = @cantidad
        
GO

/* Se procede a realizar la consulta a la tabla 'Persons', solicitando a traves de un 
Stored Procedure la cantidad de registros que contiene la tabla con la edad que se le
esta indicando */

EXECUTE cantidad 21

/* Se procede a realizar la eliminacion de la Tabla y del Stored Procedure */

DROP TABLE Persons
DROP PROCEDURE cantidad
