# Fitness App — Hyrox Trainingslog

Mobile-first trainingslogboek (single-file web app) voor een 10-weken Hyrox-programma met drie krachttrainingen en progressive overload.

## Bestanden

- `index.html` — de volledige app: opmaak (CSS), logica (JavaScript), het 10-weken schema, de krachttrainingen, de oefeningenbibliotheek en de progressieregels. Geen build-stap, geen dependencies.

## Gebruik

- Gepubliceerde versie: private pagina op claude.ai (met cloud-opslag).
- Lokaal: open `index.html` in een browser. Werkt volledig, maar slaat dan alleen op in die browser (localStorage).

## Progressieregels

- Reps ≤ 6: alleen gewicht omhoog (+2,5 kg barbell/machine, +2 kg dumbbell) als alle sets gehaald zijn met RPE < 9,5.
- Reps > 6: eerst +1 rep per sessie tot base+2, daarna gewicht omhoog en terug naar base reps.
- Bodyweight-oefeningen: alleen reps omhoog.
- Gemiste reps of RPE ≥ 9,5: herhalen.
