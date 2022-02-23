/* Se llama la Base de datos la cual se usara para realizar las consultas */
USE FlexTech

/* Se crea la tabla solicitada con sus respectivas columnas */

CREATE TABLE Articules(id INT PRIMARY KEY IDENTITY (1,1) NOT NULL,
                        Name VARCHAR (10) NULL,
                        Amount_Sold INT NULL
                        )

/* Se ingresan los valores indicados a las respectivas columnas */

INSERT INTO Articules(Name, Amount_Sold)
VALUES ('Cup', 11),
        ('Saucer', 22),
        ('Plate', 46),
        ('Fork', 34),
        ('Spoon', 45),
        ('Knife', 78),
        ('Mug', 23),
        ('Glass', 64),
        ('Tumbler', 24)
        
/* Se procede a realizar la consulta a la tabla 'Articules', solicitando que muestro solo 5 productos y
a su vez ordenando desde la cantidad mas vendida*/

SELECT Top 5 name
From Articules
ORDER BY Amount_Sold DESC



/* Se procede a realizar la eliminacion de la Tabla */

DROP TABLE Articules