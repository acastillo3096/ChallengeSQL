/* Se llama la Base de datos la cual se usara para realizar las consultas */
USE FlexTech

/* Se crea la tabla solicitada con sus respectivas columnas */

CREATE TABLE Divisions(Division_id INT NOT NULL,
                        Year INT NULL,
                        Revenue FLOAT NULL
                        )

/* Se ingresan los valores indicados a las respectivas columnas */

INSERT INTO Divisions (Division_id, Year, Revenue)
VALUES (1, 2018, 60),
        (1, 2021, 40),
        (1, 2020, 70),
        (2, 2021, -10),
        (3, 2018, 20),
        (3, 2016, 40),
        (4, 2021, 50)

/* Se procede a realizar la consulta a la tabla 'Divisions', condicionando a la consulta a que solo
busque aquella 'Division_id' que sea del año 2021 y su ingreso haya sido positivo */

SELECT Division_id
FROM Divisions
WHERE Year = 2021 AND Revenue > 0

/* Se procede a realizar la eliminacion de la Tabla */

DROP TABLE Divisions