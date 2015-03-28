--*********************************************************************
-- LABORATORIO SOLUCIONES
-- INSTRUCTOR: David Echeverri
-----------------------------------------------------------------------
- Este laboratorio ser� realizado en grupo dirigido por el instructor.

Cre una carpeta en su disco, esta ser� utilizada durante toda la capacitaci�n:
\Curso_SQL

-----------------------------------------------------------------------
-- 1. Creaci�n de scripts usando plantillas (Templates)
-----------------------------------------------------------------------
1.1 En el men� "View", de un clic en "Template Explorer".
    Existen dos tipos de plantillas (botones en parte superior)

     - SQL Server
     - Analysis Server 

Seleccione las plantillas para: SQL Server

1.2 Expanda la carpeta DataBase y de doble clic en "Create Database"
1.3 No es necesario conectarse al motor al motor, presione: Cancelar
1.4 En el men� Query, de un clic en "Specify Values for Template Parameters"
1.5 Cambie el nombre de la base de datos a: EstudianteXX
1.6 Guarde el script pero no lo ejecute.
1.7 Cierre la ventana movil: "Template Explorer"

-----------------------------------------------------------------------
-- 2. Crear proyectos, soluciones y scripts
-----------------------------------------------------------------------
Los scripts pueden ser agrupados en proyectos, en forma similar a las soluciones 
de Microsoft Visual Studio. Scripts incluyen informaci�n de conexi�n. 
Pueden incluir archivos no script como un documentaci�n de soporte.

2.1 En Management Studio, conectese al servidor desde la ventana Object Explorer
2.2 En el menu File, seleccione New y luego de un clic en Project
    a. En Templates: Seleccione "SQL Server Scripts"
    b. Escriba en Name: Laboratorios
    c. En location: Seleccione la carpeta de practicas
    d. En Solution: Seleccione "Create new solution"

La soluci�n es creada y la puede ver en la ventana "Solution explorer"
Si no ve est� ventana utilice el men� View

2.3 En la ventana "Solution Explorer", de un clic secundario en la carpeta Connections, 
    y clic en "New Connection". Llene la informaci�n de conexi�n:
    a. Server name 
    b. Presione Options, y un clic en la ficha "Connection Properties"
    c. Seleccione como base de datos: AdventureWorks2012

Presione el bot�n "Properties Window" o <F4>.  En esta ventana puede ver en
"Initial Database": AdventureWorks2012.

2.4 En Solution Explorer, clic secundario en la conexi�n, y luego clic en "New Query". 
    para crar un script con el nombre SQLQuery1.sql, conectado a la BD AdventureWorks2012.

NOTA: Una forma r�pida de crear un nuevo script consiste en dar doble clic en la conexi�n

2.5 En el editor de consultas escriba una consulta para determinar cuantas ordenes de 
    trabajo tienen fecha de pago anterior a la fecha de inicio

USE AdventureWorks2012;
GO
SELECT COUNT(WorkOrderID)
	FROM Production.Workorder
	WHERE DueDate < StartDate;

2.6 En "Solution Explorer", clic secuendario en SQLQuery1.sql, y clic en Rename 
    escriba como nombre para la consulta: Chequeo_Ordenes.sql y presione ENTER.
2.7 Para salvar la soluci�n y el "script project", presione el bot�n "Save All".
2.8 Revise y ejecute el script.

