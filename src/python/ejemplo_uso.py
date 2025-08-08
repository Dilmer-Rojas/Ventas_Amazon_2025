# Ejemplo de uso de data_cleaning.py

import pandas as pd
from src.python.data_cleaning import (
    corregir_tipos,
    eliminar_nulos,
    eliminar_duplicados,
    normalizar_minmax,
    estandarizar_zscore,
    corregir_texto
)

# Supón que tienes un DataFrame llamado datos
datos = pd.DataFrame({
    'Date': ['2025-01-01', '2025-02-01', None],
    'Price': [100, 200, 300],
    'Product': ['café ', ' té', 'CAFE'],
    'Quantity': [1, 2, 3]
})

# 1. Corregir tipos de datos
datos = corregir_tipos(datos, columnas_fecha=['Date'])

# 2. Eliminar filas con nulos en la columna 'Date'
datos = eliminar_nulos(datos, columnas=['Date'])

# 3. Eliminar duplicados
datos = eliminar_duplicados(datos)

# 4. Normalizar columnas numéricas
datos = normalizar_minmax(datos, columnas=['Price', 'Quantity'])

# 5. Estandarizar columnas numéricas
datos = estandarizar_zscore(datos, columnas=['Price', 'Quantity'])

# 6. Corregir texto en la columna 'Product'
datos = corregir_texto(datos, columnas=['Product'])

print(datos)