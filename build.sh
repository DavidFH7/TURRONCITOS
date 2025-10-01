#!/bin/bash

# Configurar Python sin mise
export PYTHON_VERSION=3.9
export MISE_USE_LEGACY=1

# Instalar pip si no existe
python -m ensurepip --upgrade

# Actualizar pip
python -m pip install --upgrade pip

# Instalar dependencias
pip install -r requirements.txt

# Crear directorio instance si no existe
mkdir -p instance

echo "Build completado exitosamente"
