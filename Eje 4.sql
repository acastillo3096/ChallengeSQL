/* Se llama la Base de datos la cual se usara para realizar las consultas */
USE FlexTech

/* Se crea la tabla solicitada con sus respectivas columnas */

CREATE TABLE Numbers(id INT PRIMARY KEY IDENTITY (1,1) NOT NULL,
                        Value INT NULL
                        )

/* Se ingresan los valores indicados a las respectivas columnas */

INSERT INTO Numbers(Value)
VALUES (4),
        (11),
        (57),
        (24),
        (47)

/* Se procede a realizar la consulta a la tabla 'Numbers', condicionado a la consulta a que indique si
los numeros indicados en la columna 'Value' son pares o impares, verifcando si estos son divisores del 
2 o no*/

SELECT id, Value, CASE WHEN Value % 2 = 0 THEN 'par' ELSE 'impar' END AS Module
FROM Numbers


/* Se procede a realizar la eliminacion de la Tabla */

DROP TABLE Numbers