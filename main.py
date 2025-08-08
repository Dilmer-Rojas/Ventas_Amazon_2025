import pandas as pd

def cargar_datos(ruta='../data/raw/amazon_sales_data 2025.csv'):
    return pd.read_csv(ruta)

def guardar_datos(df, ruta='../data/processed/datos_limpios.csv'):
    df.to_csv(ruta, index=False)