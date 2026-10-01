# Fitness App — Hyrox Trainingslog

Mobile-first trainingslogboek (single-file web app) voor een 10-weken Hyrox-programma met drie krachttrainingen en progressive overload.

## Bestanden

- `index.html` — de volledige app: opmaak (CSS), logica (JavaScript), het 10-weken schema, de krachttrainingen, de oefeningenbibliotheek en de progressieregels. Geen build-stap, geen dependencies.

## Gebruik

- Gepubliceerde versie: private pagina op claude.ai (met cloud-opslag).
- Lokaal: open `index.html` in een browser. Werkt volledig, maar slaat dan alleen op in die browser (localStorage).

## Functies (v5)

- Home-tab: begroeting, training van vandaag, volgende training, aanbevelingen (regelgebaseerd), weekvoortgang en drie discipline-hubs (🏃 Hardlopen, 🏋️ Kracht, 🔥 HYROX/workouts) met eigen statistieken per periode.
- Looptrainingen: looptype (duurloop, interval, tempo, threshold, fartlek, herstel), doeltempo, intervalstructuur (warming-up, herhalingen, hard/herstel, tempo); loggen van afstand, tijd, hartslag; tempo wordt berekend.
- HYROX/workouts: builder met format (AMRAP, EMOM, For time, Rounds, Intervals, Circuit), onderdelen uit de Hyrox-bibliotheek; loggen van resultaat, rondes, splits.
- Extra templates: Upper/Lower, Hardlopen 3×/week, Hybride.
- Garmin: "Kopieer voor Garmin" en experimenteel versturen naar Intervals.icu (Athlete ID + API key bij Instellingen; alleen in de openbare versie).

## Functies (v4)

- Vooringevulde doelen als voorbeeldtekst; hele oefening/hele workout afvinken; keuze progressie per oefening bij afronden; rust/RIR/progressie in de trainingen-editor.
- Delen via het systeem-deelmenu (WhatsApp), deel-links die een ander kan importeren, losse oefening op dagniveau.

## Functies (v3)

- Profielen (Netflix-stijl, zonder wachtwoord); alle data per profiel gescheiden. Bestaande data is gemigreerd naar profiel "Danny".
- Trainingsblokken als data: aanmaken vanuit template (10 weken Hyrox, Push/Pull/Legs, leeg), week-editor met sessies per dag (cardio/conditie of krachttraining), trainingen-editor.
- Importeren: tekst (ook dictatie), PDF, foto/screenshot, meerdere bestanden; AI zet het om naar een schema met preview. Geëxporteerde schema's (JSON-tekst) importeren zonder AI.
- Delen tussen profielen: heel schema of losse training kopiëren naar een ander profiel, of als tekst exporteren.
- Vandaag: overzicht van de dag bovenaan, daaronder de uitgewerkte sessies.

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
