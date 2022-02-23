/* Se crea el Stored Procedure para efectuar la eliminacion de la persona registrada
en la tabla Persons segun el id suministrado junto con fecha de vencimiento del 
pasaporte si este lo posee */

CREATE PROCEDURE PersonaDelete 
@id INT
AS
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
        
BEGIN

/* Se crea una variable que solo confirmara si la consulta interna posee alguna fila existente
si esto ah de ser positivo la varibale cambiara al valor 1 sino quedara en 0 */

DECLARE @pre_id INT
SET @pre_id = 0
IF EXISTS (SELECT 1
            FROM Persons
            WHERE id = @id)

SET @pre_id = 1

ELSE

    RETURN 0

/* al presentar el valor de 1 la variable 'pre_id', este corre con el siguente paso
que es realizar la eliminacion de la persona que posea el id ingresado como tambien
del registro de la fecha de vencimiento del pasaporte si este posee */

IF @pre_id = 1

    DELETE FROM Expiration
    FROM Expiration
    RIGHT JOIN Persons
    ON Expiration.id = Persons.idNac
    WHERE Persons.id = @id

    DELETE FROM Persons
    WHERE id = @id

    

    RETURN 1

END

GO

/* Se efectua la ejecuacion del Stored Procedure solicitando la eliminacion de la persona
con la id 1 */

EXECUTE PersonaDelete 1

/* Se efectua las consultas necesarias para visualizar el contenido de las tablas
luego de la eliminacion si el id de la persona estaba registrado */

SELECT *
FROM Persons

SELECT *
FROM Expiration

/* Se procede a realizar la eliminacion de las Tablas */

DROP TABLE Persons
DROP TABLE Expiration
DROP PROCEDURE PersonaDelete