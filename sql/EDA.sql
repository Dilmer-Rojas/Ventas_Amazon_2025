/*
	RESPONDER PREGUNTAS CLAVE
	EDA
	Por: Laureano Rojas C.
*/

/*Comparativas*/

-- ¿Cuál es el método de pago que más usan los clientes?
SELECT TOP 1
	Payment_Method AS 'Método de Pago',
	COUNT(Payment_Method) AS Total
FROM 
	dbo.Amazon_TB
GROUP BY
	Payment_Method
ORDER BY
	COUNT(Payment_Method) DESC
;

-- Top 10 productos más vendidos
SELECT TOP 10
	Product AS 'Producto',
	SUM(Quantity) AS 'Cantidades Vendidas'
FROM
	dbo.Amazon_TB
GROUP BY
	Product
ORDER BY
	SUM(Quantity) DESC;

-- ¿Cuál es el producto más vendido?
SELECT TOP 1
	Product AS 'Producto',
	SUM(Quantity) AS 'Cantidades Vendidas'
FROM
	dbo.Amazon_TB
GROUP BY
	Product
ORDER BY
	SUM(Quantity) DESC;

-- ¿Qué categoría vende más?
SELECT TOP 1
	Category AS 'Categoría',
	SUM(Quantity) AS 'Cantidades Vendidas'
FROM 
	dbo.Amazon_TB
GROUP BY
	Category
ORDER BY
	SUM(Quantity) DESC
;

/*Temporales*/

-- Top 2 meses donde se realizaron más ventas
SELECT * FROM dbo.Amazon_TB;
-- ¿Cuál es el mes con más ventas?

/*Geográficas*/

-- TOP 5 ciudades/paises/regiones donde se hicieron más pedidos
-- ¿En qué ciudad/pais/region se hicieron más pedidos?

/*Relacionales*/

-- ¿Cómo cambian las ventas totales según las categorías de producto?
-- ¿Se compran más productos en promedio con cierto método de pago?
