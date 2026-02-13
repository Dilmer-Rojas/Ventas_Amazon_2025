Aquí está exactamente tu mismo README, **solo cambiando “Margen Operativo” por “Ticket Promedio”**, sin modificar nada más:

---

# 🚀 Amazon Sales Intelligence 2025 – Análisis Estratégico de Ventas

<img src="./src/image/amazon-inverted_82087.png">

Este repositorio contiene la documentación completa del proyecto de **Análisis Exploratorio de Datos (EDA)** aplicado a ventas de productos de **Amazon** en 2025.

---

## Contenido

* [Enlace al dataset de Kaggle](https://www.kaggle.com/datasets/zahidmughal2343/amazon-sales-2025)
* [Objetivo del Proyecto](#objetivo-del-proyecto)
* [Preguntas Clave](#preguntas-clave)
* [Indicadores Clave KPIs](#indicadores-clave-kpis)
* [Analisis Predictivo](#análisis-predictivo)
* [Herramientas Utilizadas](#herramientas-utilizadas)

---

## Objetivo del Proyecto

**¿Que se quiere lograr?**

*Identificar los productos y categorías más rentables, así como también los métodos de pago y ciudades más populares.*

**¿Que decisión se desea tomar o que problema resolver?**

*La desición que se desea tomar es la mejora de las campañas de marketing según los hallazgos para aumentar las ventas y ganancias.*

**¿A quien beneficia este análisis?**

*A la empresa de amazon a mejorar sus campañas de marketing.*

---

## Preguntas Clave

***Comparativas***

* **¿Cuál es el método de pago que más usan los clientes?** ⇒ SQL|Power BI
  👉 **PayPal** (60 órdenes).

* **Top 10 productos más vendidos**  ⇒ SQL|Power BI

  1. Refrigerator → $78,000
  2. Laptop → $58,400
  3. Smartphone → $48,500
  4. Washing Machine → $27,000
  5. Smartwatch → $15,750
  6. Headphones → $7,300
  7. Running Shoes → $4,320
  8. Jeans → $2,480
  9. T-Shirt → $1,060
  10. Book → $1,035

* **¿Cuál es el producto más vendido?** ⇒ SQL|Power BI
  👉 **Refrigerator** ($78,000).

* **¿Qué categoría vende más?** ⇒ SQL|Power BI
  👉 **Electronics** ($129,950).

---

***Temporales***

* **Top 2 meses donde se realizaron más ventas** ⇒ SQL|Power BI

  1. Mes 2 → $122,695
  2. Mes 3 → $117,730

* **¿Cuál es el mes con más ventas?** ⇒ SQL|Power BI
  👉 **Mes 2 (Febrero)** con $122,695.

---

***Geográficas***

* **TOP 5 ciudades/paises/regiones donde se hicieron más ventas** ⇒ SQL|Power BI

  1. Miami → $31,700
  2. Denver → $29,785
  3. Houston → $28,390
  4. Dallas → $27,145
  5. Seattle → $26,890

* **¿En qué ciudad/pais/region se hicieron más ventas?** ⇒ SQL|Power BI
  👉 **Miami** ($31,700).

---

***Relacionales***

* **¿Cómo cambian las ventas totales según las categorías de producto?** ⇒ SQL|Power BI

  * Electronics → $129,950
  * Home Appliances → $105,000
  * Footwear → $4,320
  * Clothing → $3,540
  * Books → $1,035

* **¿Se compran más productos en promedio con cierto método de pago?** ⇒ SQL|Power BI
  👉 **PayPal** presenta el mayor ticket promedio: **$1,160.75**.

---

## Indicadores Clave KPI

* **Ventas Totales:** `SUM(Total Sales)` → **$243,845 USD** → *Mide el tamaño total del negocio y el impacto global de las ventas.*

* **Ticket Promedio:** → **$975.38** → *Evalúa el valor promedio generado por cada orden realizada.*

* **Producto más Vendido:**→ **Smartwacht (105)* → *Indentifica el producto estrella para campañas y reposición de inventario.*

* **Mes con Más Ventas:** `MAX(SUM(Total Sales))` → **Febrero ($122,695)** → *Detecta el momento pico para enforcar marketing y stock.*

---

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

---

## Herramientas Utilizadas

* **Python 3**: para la limpieza, análisis y visualización inicial de datos (usando Jupyter Notebook).
* **SQL Server**: para la consulta, exploración y transformación de los datos desde una base estructurada.
* **Power BI Desktop**: para la construcción de dashboards interactivos.
* **Power BI Service**: para la publicación y distribución del informe final.
