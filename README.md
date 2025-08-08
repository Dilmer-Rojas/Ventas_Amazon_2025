# Análisis de Ventas de Amazon

<img src="./src/image/amazon-inverted_82087.png">

Este repositorio contiene la documentación completa del proyecto de **Análisis Exploratorio de Datos (EDA)** aplicado a ventas de productos de **Amazon** en 2025.

## Contenido

- [Enlace al dataset de Kaggle](https://www.kaggle.com/datasets/zahidmughal2343/amazon-sales-2025)
- [Objetivo del Proyecto](#objetivo-del-proyecto)
- [Preguntas Clave](#preguntas-clave)
- [Indicadores Clave KPIs](#indicadores-clave-kpis)
- [Analisis Predictivo](#análisis-predictivo)
- [Herramientas Utilizadas](#herramientas-utilizadas)

## Objetivo del Proyecto

**¿Que se quiere lograr?**

*Identificar los productos y categorías más rentables, así como también los métodos de pago y ciudades más populares.*

**¿Que decisión se desea tomar o que problema resolver?**

*La desición que se desea tomar es la mejora de las campañas de marketing según los hallazgos para aumentar las ventas y ganancias.*

**¿A quien beneficia este análisis?**

*A la empresa de amazon a mejorar sus campañas de marketing.*


## Preguntas Clave

***Comparativas***

* **¿Cuál es el método de pago que más usan los clientes?** ⇒ SQL|Power BI
* **Top 10 productos más vendidos**  ⇒ SQL|Power BI
* **¿Cuál es el producto más vendido?** ⇒ SQL|Power BI
* **¿Qué categoría vende más?** ⇒ SQL|Power BI

***Temporales***

* **Top 2 meses donde se realizaron más ventas** ⇒ SQL|Power BI
* **¿Cuál es el mes con más ventas?** ⇒ SQL|Power BI

***Geográficas***

* **TOP 5 ciudades/paises/regiones donde se hicieron más ventas** ⇒ SQL|Power BI
* **¿En qué ciudad/pais/region se hicieron más ventas?** ⇒ SQL|Power BI

***Relacionales***

* **¿Cómo cambian las ventas totales según las categorías de producto?** ⇒ SQL|Power BI
* **¿Se compran más productos en promedio con cierto método de pago?** ⇒ SQL|Power BI


## Indicadores Clave KPI

* **Ventas Totales:** `SUM(Total Sales)` → USD → *Mide el tamaño total del negocio y el impacto global de las ventas.*

* **Margen Operativo (%):** `(Ganancia Operativa / Ventas totales) * 100` → % → *Evalúa cuánta ganancia real deja cada venta, no solo cuánto se vende.*

* **Producto más Vendido:** `MAX(Total Sales)` → USD → *Indentifica el producto estrella para campañas y reposición de inventario.*

* **Mes con Más Ventas:** `MAX(SUM(Total Sales))` → USD → *Detecta el momento pico para enforcar marketing y stock.*

## Análisis Predictivo

* **📌 Predecir si una orden será Completada, Pendiente o Cancelada**
    * **Target:** `Status`
    * **Features:**
        * `Price`
        * `Quantity`
        * `Payment Method`
        * `Category`
        * `Customer Location`
        * `Mes`, `Día de la semana`, (extraido de los `datos`)
    * **Modelo:** Clasificación (Random Forest, XGBoost, Logistic Regression)
    * **Uso práctico:** Alertas tempranas de pedidos con riesgo de no completarse


## Herramientas Utilizadas

* **Python 3**: para la limpieza, análisis y visualización inicial de datos (usando Jupyter Notebook).
* **SQL Server**: para la consulta, exploración y transformación de los datos desde una base estructurada.
* **Power BI Desktop**: para la construcción de dashboards interactivos.
* **Power BI Service**: para la publicación y distribución del informe final.