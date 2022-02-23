/* Se crea el Stored Procedure el cual presenta la consulta del dia de la semana segun la fecha
inidcada en la variable '@dw' devolviendo un numero del dia de la semana, con las condiconales se
efectua la conversion de un numero a un dia  */

CREATE PROCEDURE semana @dw DATE
AS
        SET DATEFORMAT dmy
        SELECT  CASE WHEN DATEPART(dw,@dw) = 1 THEN 'Domingo' ELSE 
                CASE WHEN DATEPART (dw,@dw) = 2 THEN 'Lunes' ELSE
                CASE WHEN DATEPART (dw,@dw) = 3 THEN 'Martes' ELSE
                CASE WHEN DATEPART (dw,@dw) = 4 THEN 'Miercoles' ELSE
                CASE WHEN DATEPART (dw,@dw) = 5 THEN 'Juves' ELSE
                CASE WHEN DATEPART (dw,@dw) = 6 THEN 'Viernes' ELSE
                CASE WHEN DATEPART (dw,@dw) = 7 THEN 'Sabado' END END END END END END END AS [Day]
GO

/* Se procede a realizar la consulta del dia de la semana ejecutando el stored procedure ya creado*/

EXECUTE semana '02/02/2022'

/* Se procede a realizar la eliminacion del stored procedure */

DROP PROCEDURE semana