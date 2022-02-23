/* Se llama la Base de datos la cual se usara para realizar las consultas */
USE FlexTech

/* Se crean las tablas solicitadas con sus respectivas columnas */

CREATE TABLE Nationality(id INT PRIMARY KEY IDENTITY (1,1) NOT NULL,
                            [Desc] VARCHAR(10) NULL
                            )

CREATE TABLE Persons(id INT PRIMARY KEY IDENTITY (1,1) NOT NULL,
                        idNac INT NOT NULL FOREIGN KEY REFERENCES Nationality(id),
                        Name VARCHAR(5) NULL,
                        Age INT NULL
                        )

/* Se ingresan los valores indicados a las respectivas columnas de cada tabla */

INSERT INTO Nationality([Desc])
VALUES ('Argentino'),
        ('Italiano'),
        ('Español'),
        ('Aleman')

INSERT INTO Persons(idNac, Name, Age)
VALUES (1, 'Bob', 21),
        (1, 'Sam', 19),
        (2, 'Jill', 18),
        (3, 'Jim', 21),
        (4, 'Sally', 19),
        (2, 'Jess', 20),
        (3, 'Will', 21)
        
/* Se procede a realizar la consulta a la tabla 'Persons', solicitando la nacionalidad
de cada una de las personas registradas en a tabla */

SELECT Persons.id , Nationality.[Desc] AS DescNac, Persons.Name, Persons.Age
FROM Persons
INNER JOIN Nationality
ON Persons.idNac = Nationality.id

/* Se procede a realizar la eliminacion de las Tablas */

DROP TABLE Persons
DROP TABLE Nationality