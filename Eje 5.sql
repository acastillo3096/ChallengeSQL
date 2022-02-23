/* Se llama la Base de datos la cual se usara para realizar las consultas */
USE FlexTech

/* Se crea la tabla solicitada con sus respectivas columnas */

CREATE TABLE Persons(id INT PRIMARY KEY IDENTITY (1,1) NOT NULL,
                        Name VARCHAR (5) NULL,
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

/* Se procede a realizar la consulta a la tabla 'Persons', Solicitando que se realice
un conteo a traves del COUNT para que me refleje en la consulta el total de personas 
que hay de cada edad*/

SELECT Age, COUNT (*) AS Count
FROM Persons
GROUP By Age


/* Se procede a realizar la eliminacion de la Tabla */

DROP TABLE Persons