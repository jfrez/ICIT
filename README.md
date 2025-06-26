# ICIT Course Descriptors

This repository contains Markdown versions of the official course descriptor files for the Escuela de Informática y Telecomunicaciones.

## Converting from DOCX

Run `converter.sh` to convert `.docx` documents to Markdown while preserving the directory structure:

```bash
bash converter.sh
```

The script calls `pandoc` with the `--extract-media` option to save embedded images in a `media/` folder next to each generated `.md` file. File names are normalized to ASCII for portability.

## Requirements

- [Pandoc](https://pandoc.org/) must be installed and available in `PATH`.

