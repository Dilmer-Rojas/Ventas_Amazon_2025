/*
	RESPONDER PREGUNTAS CLAVE
	EDA
	Por: Laureano Rojas C.
*/

/*Comparativas*/

-- �Cu�l es el m�todo de pago que m�s usan los clientes?
SELECT TOP 1
	Payment_Method AS 'M�todo de Pago',
	COUNT(Payment_Method) AS Total
FROM 
	dbo.Amazon_TB
GROUP BY
	Payment_Method
ORDER BY
	COUNT(Payment_Method) DESC
;

-- Top 10 productos m�s vendidos
SELECT TOP 10
	Product AS 'Producto',
	SUM(Quantity) AS 'Cantidades Vendidas'
FROM
	dbo.Amazon_TB
GROUP BY
	Product
ORDER BY
	SUM(Quantity) DESC;

-- �Cu�l es el producto m�s vendido?
SELECT TOP 1
	Product AS 'Producto',
	SUM(Quantity) AS 'Cantidades Vendidas'
FROM
	dbo.Amazon_TB
GROUP BY
	Product
ORDER BY
	SUM(Quantity) DESC;

-- �Qu� categor�a vende m�s?
SELECT TOP 1
	Category AS 'Categor�a',
	SUM(Quantity) AS 'Cantidades Vendidas'
FROM 
	dbo.Amazon_TB
GROUP BY
	Category
ORDER BY
	SUM(Quantity) DESC
;

/*Temporales*/

-- Top 2 meses donde se realizaron m�s ventas
SELECT * FROM dbo.Amazon_TB;
-- �Cu�l es el mes con m�s ventas?

/*Geogr�ficas*/

-- TOP 5 ciudades/paises/regiones donde se hicieron m�s pedidos
-- �En qu� ciudad/pais/region se hicieron m�s pedidos?

/*Relacionales*/

-- �C�mo cambian las ventas totales seg�n las categor�as de producto?
-- �Se compran m�s productos en promedio con cierto m�todo de pago?
