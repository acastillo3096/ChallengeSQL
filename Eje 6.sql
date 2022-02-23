/* Se llama la Base de datos la cual se usara para realizar las consultas */
USE FlexTech

/* Se crea la tabla solicitada con sus respectivas columnas */

CREATE TABLE Persons(id INT PRIMARY KEY IDENTITY (1,1) NOT NULL,
                        Name VARCHAR (5) NULL
                        )

/* Se ingresan los valores indicados a las respectivas columnas */

INSERT INTO Persons(Name)
VALUES ('Bob'),
        ('Sam'),
        ('Jill'),
        ('Jim'),
        ('Sally'),
        ('Jess'),
        ('Will')

/* Se procede a realizar la consulta a la tabla 'Persons', solicitando que se efectue un saludo a
cada persona registrada en dicha tabla */

SELECT Name,
    Saludo = '¡Hola '+name+'! ¿Cómo estás hoy?'
FROM Persons


/* Se procede a realizar la eliminacion de la Tabla */

DROP TABLE Persons