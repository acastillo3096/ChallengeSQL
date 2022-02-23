/* Se llama la Base de datos la cual se usara para realizar las consultas */
USE FlexTech

/* Se crea la tabla solicitada con sus respectivas columnas */

CREATE TABLE Tourists(id INT PRIMARY KEY IDENTITY (1,1) NOT NULL,
                        Name VARCHAR (20) NULL,
                        Country VARCHAR (15) NULL
                        )

/* Se ingresan los valores indicados a las respectivas columnas */

INSERT INTO Tourists(Name, Country)
VALUES ('Bob Smith', 'United States'),
        ('Jim Jones', 'China'),
        ('Sam White', 'Japan'),
        ('Jess Black', 'Canada'),
        ('Will Wilson', 'Germany'),
        ('Wilson Scott', 'England'),
        ('Scott Daniels', 'France'),
        ('Daniel Jackson', 'Canada'),
        ('Jack Johnson', 'United States')
        
/* Se procede a realizar la consulta a la tabla 'Tourists', solicitando el nombre de
cada persona que sea del pais diferente a Canada y Estados Unidos */

SELECT Name
FROM Tourists
WHERE Country != 'Canada' AND Country != 'United States'


/* Se procede a realizar la eliminacion de la Tabla */

DROP TABLE Tourists