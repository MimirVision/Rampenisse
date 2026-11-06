#!/usr/bin/env bash
# Pakker rampenisse.html inn i et komplett HTML-dokument (index.html) for bruk utenfor Claude,
# f.eks. lokalt i nettleseren eller på GitHub Pages.
set -euo pipefail
cd "$(dirname "$0")/.."
{
  printf '<!doctype html>\n<html lang="nb">\n<head>\n<meta charset="utf-8">\n'
  printf '<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">\n'
  printf '<meta name="theme-color" content="#1f4d3f" media="(prefers-color-scheme: light)">\n'
  printf '<meta name="theme-color" content="#143a31" media="(prefers-color-scheme: dark)">\n'
  printf '<meta name="format-detection" content="telephone=no">\n'
  printf '<link rel="manifest" href="manifest.webmanifest">\n'
  printf '<link rel="icon" href="icons/icon.svg" type="image/svg+xml">\n'
  printf '<link rel="apple-touch-icon" href="icons/apple-touch-icon.png">\n'
  printf '<meta name="apple-mobile-web-app-capable" content="yes">\n'
  printf '<meta name="mobile-web-app-capable" content="yes">\n'
  printf '<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">\n'
  printf '<meta name="apple-mobile-web-app-title" content="Rampenisse">\n'
  printf '<style>:root{padding-top:env(safe-area-inset-top,0px);padding-bottom:env(safe-area-inset-bottom,0px)}body{margin:0}img{max-width:100%%}[hidden]{display:none!important}</style>\n'
  printf '</head>\n<body>\n'
  cat rampenisse.html
  cat <<'PWA'
<script>
// PWA: offline-støtte og vedvarende lagring (bare i den frittstående versjonen)
if ('serviceWorker' in navigator && location.protocol === 'https:') {
  addEventListener('load', () => navigator.serviceWorker.register('sw.js').catch(() => {}));
}
if (navigator.storage && navigator.storage.persist) navigator.storage.persist().catch(() => {});
</script>
PWA
  printf '\n</body>\n</html>\n'
} > index.html
# Samle det som skal publiseres på GitHub Pages
rm -rf _site && mkdir -p _site/icons
cp index.html manifest.webmanifest sw.js _site/ && cp icons/* _site/icons/
echo "Bygget index.html og _site/"
