#!/usr/bin/env bash
# Convierte todos los .docx a .md respetando la jerarquía de carpetas

shopt -s globstar nullglob   # ** habilita recursividad en bash ≥4
for file in **/*.docx; do
  # - Extrae imágenes a una subcarpeta "media" junto al .md (opcional)
  # - Sustituye la extensión conservando la ruta original
  pandoc -f docx -t gfm               \
         --extract-media="${file%/*}/media" \
         "$file" -o "${file%.docx}.md"
done

