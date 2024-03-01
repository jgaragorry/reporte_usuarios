#!/bin/bash

# Script creado por Jose Garagorry

# Utiliza el comando find para listar archivos y directorios en el directorio actual
# Recorre recursivamente los subdirectorios
# Calcula el tamaño de cada archivo y directorio de forma legible para el usuario
# Filtra los resultados para mostrar solo aquellos cuyo tamaño es significativo en megabytes o gigabytes
# Ordena la salida por tamaño humano (orden alfabético que tiene en cuenta el tamaño de los archivos)

find . -maxdepth 1 -exec du -sh {} + | grep -E "M|G" | sort -h
