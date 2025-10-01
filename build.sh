#!/bin/bash

# Instalar dependencias
pip install -r requirements.txt

# Crear directorio instance si no existe
mkdir -p instance

# Inicializar la base de datos
python -c "
from app import app, db, cargar_datos_existentes
with app.app_context():
    cargar_datos_existentes()
    print('Base de datos inicializada correctamente')
"
