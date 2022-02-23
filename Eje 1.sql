/* Se llama la Base de datos la cual se usara para realizar las consultas */
USE FlexTech

/* Se crea la tabla solicitada con sus respectivas columnas */

CREATE TABLE Numbers(   id INT IDENTITY (1,1) PRIMARY KEY NOT NULL,
                        Value FLOAT NULL)

/* Se ingresan los valores indicados a las respectivas columnas */

INSERT INTO Numbers (Value)
VALUES (-56),
        (76),
        (-84),
        (96),
        (-47)

/* Se procede a realizar la consulta a la tabla 'Numbers', indicando en la consulta que se desea realizar
una multiplicacion *-1 a la comlumna Value */

SELECT id, [Value]* -1 AS Reverse
FROM Numbers

/* Se procede a realizar la eliminacion de la Tabla */

DROP TABLE Numbers