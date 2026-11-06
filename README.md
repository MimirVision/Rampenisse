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
- `scripts/build.sh` – lager `index.html` fra `rampenisse.html`. Kjør etter endringer.
