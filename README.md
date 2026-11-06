# Rampenisse-verkstedet

En app for å planlegge, gjennomføre og loggføre rampenisse-desember.

- **Oversikt**: nedtelling, dagens rampestrek, kveldens forberedelser og sjekkliste før nissen kommer.
- **Kalender**: 24 luker. Hver dag har plan, materialer, forberedelser, status og logg.
- **Idébank**: over 70 rampestreker med kategori, innsats, rot og materialer. Favoritter, søk, filtre og egne ideer.
- **Handleliste**: bygges automatisk av materialene til de planlagte dagene.
- **Dagbok**: stjerner, reaksjoner, sitater og bilder fra hver dag.
- **Nissebrev**: maler for ankomst, advarsel, unnskyldning, takk for grøten, oppdrag og avskjed.
- **Oppsett**: nissens navn, barna, datoer, sikkerhetskopi og tips.

## Filer

- `rampenisse.html` – selve appen (kildefilen). Publiseres som Claude-artifact, der data lagres i skyen.
- `index.html` – samme app som et komplett HTML-dokument. Åpnes direkte i nettleseren eller på GitHub Pages; data lagres da i nettleseren.
- `manifest.webmanifest`, `sw.js`, `icons/` – det som gjør appen installerbar og frakoblet.
- `scripts/build.sh` – lager `index.html` og `_site/` fra `rampenisse.html`. Kjør etter endringer.
- `.github/workflows/pages.yml` – publiserer `_site/` på GitHub Pages.

## Installere som app (PWA)

Appen kan installeres på hjemskjermen og virker uten nett. Den publiseres med GitHub Pages på
https://mimirvision.github.io/Rampenisse/

Første gang: gå til **Settings → Pages** i repoet og velg **Source: GitHub Actions**. Etter det
publiseres appen automatisk ved hver push til `main` eller `master`.

- **iPhone:** åpne adressen i Safari, trykk Del og velg «Legg til på Hjem-skjerm».
- **Android:** åpne adressen i Chrome, trykk menyen og velg «Installer app».

PWA-en lagrer på telefonen. Flytt en plan mellom versjoner med Oppsett → Sikkerhetskopi → Kopier og «Lim inn kopi».
