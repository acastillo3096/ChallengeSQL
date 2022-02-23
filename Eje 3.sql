/* Se llama la Base de datos la cual se usara para realizar las consultas */
USE FlexTech

/* Se crea la tabla solicitada con sus respectivas columnas */

CREATE TABLE Years(id INT PRIMARY KEY IDENTITY (1,1) NOT NULL,
                        Year INT NULL
                        )

/* Se ingresan los valores indicados a las respectivas columnas */

INSERT INTO Years (Year)
VALUES (1776),
        (2001),
        (1643),
        (1865),
        (1969)

/* Se procede a realizar la consulta a la tabla 'Years', condicionado a la consulta a que indique el siglo donde
pertenece el año registrado en la columna 'Year'*/

SELECT id, Year,
        Centuries = CASE WHEN [Year] >= 2001 THEN 21 ELSE 
        CASE WHEN [Year] >= 1901 THEN 20 ELSE 
        CASE WHEN [Year] >= 1801 THEN 19 ELSE
        CASE WHEN [Year] >= 1701 THEN 18 ELSE
        CASE WHEN [Year] >= 1601 THEN 17 END END END END END
FROM Years
GROUP BY id, Year

/* Se procede a realizar la eliminacion de la Tabla */

DROP TABLE Years