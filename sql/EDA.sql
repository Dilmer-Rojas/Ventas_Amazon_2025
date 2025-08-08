/*
	RESPONDER PREGUNTAS CLAVE
	EDA
	Por: Laureano D. Rojas Casta�eda.
*/

/*Comparativas*/

-- Cual es el metodo de pago que mas usan los clientes?
SELECT TOP 1
	Payment_Method AS 'Metodo de Pago',
	COUNT(Payment_Method) AS Total
FROM 
	dbo.Amazon_TB
GROUP BY
	Payment_Method
ORDER BY
	COUNT(Payment_Method) DESC
;

-- Top 10 productos mas vendidos
SELECT TOP 10
	Product AS 'Producto',
	SUM(Quantity) AS 'Cantidades Vendidas'
FROM
	dbo.Amazon_TB
GROUP BY
	Product
ORDER BY
	SUM(Quantity) DESC;

-- Cual es el producto mas vendido?
SELECT TOP 1
	Product AS 'Producto',
	SUM(Quantity) AS 'Cantidades Vendidas'
FROM
	dbo.Amazon_TB
GROUP BY
	Product
ORDER BY
	SUM(Quantity) DESC;

-- Que categoria vende mas?
SELECT TOP 1
	Category AS 'Categoria',
	SUM(Quantity) AS 'Cantidades Vendidas'
FROM 
	dbo.Amazon_TB
GROUP BY
	Category
ORDER BY
	SUM(Quantity) DESC
;

/*Temporales*/

-- Top 2 meses donde se realizaron mas ventas
SELECT TOP 2
	Month AS 'Mes',
	SUM(Quantity) AS 'Cantidad de Ventas'
FROM
	dbo.Amazon_TB
GROUP BY
	Month
ORDER BY
	SUM(Quantity) DESC
;

-- Cual es el mes con mas ventas?
SELECT TOP 1
	Month AS 'Mes',
	SUM(Quantity) AS 'Numero de Ventas'
FROM
	dbo.Amazon_TB
GROUP BY
	Month
ORDER BY
	SUM(Quantity) DESC;

/*Geograficas*/

-- TOP 5 ciudades/paises/regiones donde se hicieron mas ventas
SELECT TOP 5
	Customer_Location AS 'City',
	SUM(Quantity) AS 'Numero de Ventas'
FROM 
	dbo.Amazon_TB
GROUP BY
	Customer_Location
ORDER BY
	SUM(Quantity) DESC
;
-- En que ciudad/pais/region se hicieron mas ventas?
SELECT TOP 1
	Customer_Location AS 'City',
	SUM(Quantity) AS 'Numero de Ventas'
FROM 
	dbo.Amazon_TB
GROUP BY
	Customer_Location
ORDER BY
	SUM(Quantity) DESC
;

/*Relacionales*/

-- Como cambian las ventas totales segun las categorias de producto?
SELECT
    Category AS 'Categoria',
    SUM(Total_Sales) AS 'Ventas Totales'
FROM
    dbo.Amazon_TB
GROUP BY
    Category
ORDER BY
    [Ventas Totales] DESC;

-- Se compran mas productos en promedio con cierto metodo de pago?
SELECT
    Payment_Method AS 'Metodo de Pago',
    AVG(Quantity) AS 'Promedio de Productos Comprados'
FROM
    dbo.Amazon_TB
GROUP BY
    Payment_Method
ORDER BY
    [Promedio de Productos Comprados] DESC;