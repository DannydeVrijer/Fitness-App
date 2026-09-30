# Fitness App — Hyrox Trainingslog

Mobile-first trainingslogboek (single-file web app) voor een 10-weken Hyrox-programma met drie krachttrainingen en progressive overload.

## Bestanden

- `index.html` — de volledige app: opmaak (CSS), logica (JavaScript), het 10-weken schema, de krachttrainingen, de oefeningenbibliotheek en de progressieregels. Geen build-stap, geen dependencies.

## Gebruik

- Gepubliceerde versie: private pagina op claude.ai (met cloud-opslag).
- Lokaal: open `index.html` in een browser. Werkt volledig, maar slaat dan alleen op in die browser (localStorage).

## Functies (v2)

- Vandaag: programma-sessie + krachttraining inline, in-/uitklapbaar, live "volgende keer"-voorspelling per oefening, PR-melding per set.
- Delen: afbeelding (WhatsApp) of PDF van een geplande of gelogde workout; bij planning keuze tussen eigen gewichten of lege invulvelden.
- Oefeningen wisselen (filter op spiergroep) en eigen oefeningen toevoegen (naam, spiergroep, materiaal).
- Stats: weekrecap met vergelijking vorige week (deelbaar), sets per spiergroep t.o.v. richtlijnen (RP volume landmarks) + 4-wekenverdeling, trainingsbelasting (RPE × geschatte minuten) per week, PR-bord, per-oefening 1RM-grafiek.

## Progressieregels

- Reps ≤ 6: alleen gewicht omhoog (+2,5 kg barbell/machine, +2 kg dumbbell) als alle sets gehaald zijn met RPE < 9,5.
- Reps > 6: eerst +1 rep per sessie tot base+2, daarna gewicht omhoog en terug naar base reps.
- Bodyweight-oefeningen: alleen reps omhoog.
- Gemiste reps of RPE ≥ 9,5: herhalen.
