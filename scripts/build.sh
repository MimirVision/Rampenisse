#!/usr/bin/env bash
# Pakker rampenisse.html inn i et komplett HTML-dokument (index.html) for bruk utenfor Claude,
# f.eks. lokalt i nettleseren eller på GitHub Pages.
set -euo pipefail
cd "$(dirname "$0")/.."
{
  printf '<!doctype html>\n<html lang="nb">\n<head>\n<meta charset="utf-8">\n'
  printf '<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">\n'
  printf '<meta name="theme-color" content="#1f4d3f">\n'
  printf '<style>:root{padding-top:env(safe-area-inset-top,0px);padding-bottom:env(safe-area-inset-bottom,0px)}body{margin:0}img{max-width:100%%}[hidden]{display:none!important}</style>\n'
  printf '</head>\n<body>\n'
  cat rampenisse.html
  printf '\n</body>\n</html>\n'
} > index.html
echo "Bygget index.html"
