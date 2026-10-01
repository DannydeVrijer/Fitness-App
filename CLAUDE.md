# Hyrox Trainingslog — werkafspraken voor Claude

Eigenaar: Danny (eventsmarketing@houseofsports.nl), taal: Nederlands, kort en kritisch.

## Wat dit is
Single-file PWA (`index.html`): HTML-fragment met `<style>` + één `<script>`. Geen build, geen dependencies (jsPDF/pdf.js via cdnjs).
Drie live plekken, altijd alle drie bijwerken na een wijziging:
1. **claude.ai artifact** (met cloud-opslag + AI-import): `https://claude.ai/artifact/RQQhisDn1kSZLk7FxxK2Fa` — publiceren met de Artifact-tool, `url` meegeven, label kort (<60 tekens), capabilities niet meesturen (blijven db/downloads/sample).
2. **GitHub Pages** (publieke versie voor trainingsmaten): push naar `main` → Action bouwt `dist/` via `build-pages.sh` → `https://dannydevrijer.github.io/Fitness-App/`.
3. **PC van Danny** (via device-tools): `C:\Users\DannydeVrijer\OneDrive - House of Sports\Claude\Persoonlijk\Fitness-App\index.html` én `...\Persoonlijk\hyrox-trainingslog.html` (zelfde bestand). Stage in `/mnt/user-data/outputs/`, dan `device_commit_files` met `force:true`.

## Werkwijze per wijziging
1. Wijzig `index.html` (Python replace-scripts met asserts werken het best; zie `scratch/` patroon).
2. Syntax: script-blok extraheren → `node --check`.
3. Klik-test: `tests/walk.js` (Playwright, Chromium op `/opt/pw-browsers/chromium`, `NODE_PATH` naar een map met playwright). Bekende stale verwachtingen: "extra session n=", "tpls=5", "reload persists done=2", "hero shows next session" — geen echte bugs.
4. Screenshot bekijken bij UI-wijzigingen (390×844, dpr 2).
5. Commit (NL, "vX.Y: …"), push, artifact publiceren, PC-kopie, README bijwerken bij nieuwe functies.

## Vaste productkeuzes (niet terugdraaien zonder vragen)
- Geen "start workout"-stap, geen rusttimer, geen tijdlogging bij kracht.
- Doelgewichten/reps als placeholder (niet echt ingevuld); getypte waarden blijven bewaard.
- Progressie: reps ≤6 alleen gewicht; anders reps tot base+2 dan gewicht. Keuze per oefening (gewicht/reps/niet) inline onder "Volgende keer".
- 10-weken Hyrox template = exact de PDF (originele dinsdagen); "Danny"-variant apart.
- Profielen volledig gescheiden; delen per schema/training; deel-links `PUBLIC_URL#w=…`.
- Home = beslissen (vandaag, voor jou, disciplines), Vandaag = loggen, Stats heeft tab HYROX. Geen onboarding-wizard in de flow.
- iOS: sheets sluiten via X, greep of achtergrond; `navigator.share` alleen synchroon in de tik; WhatsApp via `wa.me`.

## Datamodel (kort)
`profiles/{pid}`, `settings/{pid}`, `programs/{pid}__{progId}` (weeks[].days.{mon..sun}[] met `{kind:'gym',tpl}` of `{kind:'cardio',type,disc,runType|format,iv|mov,lines,...}`), `days/{pid}__{progId}__{date}` (status per sessie + extra's), `sessions/{...}__{tpl}` (krachtlogs). localStorage-mirror `hyroxlog.v3`.
