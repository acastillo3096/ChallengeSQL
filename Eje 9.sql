/* Se llama la Base de datos la cual se usara para realizar las consultas */
USE FlexTech

/* Se crea la tabla solicitada con sus respectivas columnas */

CREATE TABLE Persons(id INT PRIMARY KEY IDENTITY (1,1) NOT NULL,
                        Name VARCHAR (20) NULL,
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
        
/* Se procede a realizar la consulta a la tabla 'Persons', solicitando las edades
unicas que hay en la tabla ordenadamente */

SELECT DISTINCT Age
FROM Persons
Order by Age




/* Se procede a realizar la eliminacion de la Tabla */

DROP TABLE Persons