/* Se llama la Base de datos la cual se usara para realizar las consultas */
USE FlexTech

/* Se crean las tablas solicitadas con sus respectivas columnas */

CREATE TABLE Expiration(id INT  NOT NULL,
                            Fvto VARCHAR(10) NULL
                            )

CREATE TABLE Persons(id INT PRIMARY KEY IDENTITY (1,1) NOT NULL,
                        idNac INT NOT NULL,
                        Name VARCHAR(5) NULL,
                        Age INT NULL
                        )

/* Se ingresan los valores indicados a las respectivas columnas de cada tabla */

INSERT INTO Expiration(id, Fvto)
VALUES (1,'1/10/23'),
        (2,'22/5/25'),
        (5,'22/1/23'),
        (6,'15/6/28')

INSERT INTO Persons(idNac, Name, Age)
VALUES (1, 'Bob', 21),
        (1, 'Sam', 19),
        (2, 'Jill', 18),
        (3, 'Jim', 21),
        (4, 'Sally', 19),
        (2, 'Jess', 20),
        (3, 'Will', 21)
        
/* Se procede a realizar la consulta a la tabla 'Persons', solicitando la fecha de vencimiento
del pasaporte de cada una de las personas registradas segun el registro de la tabla 'Expiration' */

SELECT Persons.id, Persons.Name, Persons.Age, ISNULL(Expiration.Fvto,'') AS Fvto
FROM Persons
LEFT JOIN Expiration
ON Persons.idNac = Expiration.id


/* Se procede a realizar la eliminacion de las Tablas */

DROP TABLE Persons
DROP TABLE Expiration

