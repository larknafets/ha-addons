Full release details: https://github.com/larknafets/nebenkostenrechner/releases

## [v0.8.1] - 2026-09-05

## Changelog
* fix: HA-Add-on-DB-Pfad wechselt auf addon_configs, mit Migration



## [v0.8.0] - 2026-09-05

## Changelog
* docs: Widget-Routen im README dokumentieren
* feat: Ablesungen einem Abrechnungsmonat zuordnen (#86)
* feat: Update-Hinweis im Dashboard-Footer bei neuem GitHub-Release
* feat: kombinierte HA-Widget-Übersicht (Jahressumme + Verbrauchswerte)
* fix: Container als nonroot-User statt root laufen lassen
* fix: Monatsverlauf-Balken nie ueber 100%, Nav-Ruecklink nur auf Detailseiten
* fix: Tausenderpunkt beim CSV-Import korrekt parsen (#87)
* refactor: split handlers.go into modules, deduplicate Jahreszeile aggregation
* style: "Jahressummen <jahr> laufend"-Zeile aus den Widgets entfernen
* style: Button-Feinschliff Ablesungen/Fixkosten/Stammdaten
* style: Diese-Praefix entfernen, Nav-Ruecklink auf Detailseiten, Abstaende angleichen
* style: Kosten Wärmepumpe gesamt und Kosten Wallbox fett hervorheben
* style: Neue-Eintrag-Buttons nach oben, schlichtere Beschriftung



## [v0.7.0] - 2026-09-04

## Changelog
* docs: Zähler-Verschachtelung und PV-Verrechnungskaskade als Schaubild
* feat: Ingress-freie Widget-Routen für Home-Assistant-Dashboards
* feat: icon badges for Wohnungsgröße/Flurstück/Personen, German thousands separator
* feat: legend follows active Monatsverlauf-Modus, colored Verbrauchswerte
* feat: pad Verbrauchswerte to exactly 2 decimal places
* feat: show Flurstücksgröße-Badge and Personen-Schnitt on Jahressummen-Karte
* feat: show absolute diff to previous Ablesung on Zähler table
* fix: show actual kWh in Dashboard Verbrauchswerte instead of PV-capped billed anteil
* style: Jahressummen-Karten Kategorie-Zeilen mit Icon statt Text, farblich passend
* style: Wallboxen/PV-Anlage Jahresübersicht-Verbrauchswerte ohne Nachkommastellen
* style: bold card titles on Jahressummen-Übersicht



## [v0.6.0] - 2026-09-03

## Changelog
* feat: show PV-Anteil in Wallboxen Jahressummen-Karte
* feat: show actual kWh instead of billed-only values in Dashboard Verbrauchswerte/Wallbox
* refactor: remove redundant kpi-strip boxes from Dashboard tab panels



## [v0.5.1] - 2026-09-03

## Changelog
* fix: Fixkosten jährlich-Werte blank due to invalid number-input value, sync stale Kostenposition labels



## [v0.5.0] - 2026-09-03

## Changelog
* feat: add Wallbox/PV-Anlage Dashboard entities, unify page nav (#67)
* refactor: bundle Wallbox/PV-Anlage series identity into simpleSeries



## [v0.4.0] - 2026-09-03

## Changelog
* docs: add Fixkosten domain terms to CONTEXT.md (#60)
* docs: rename Wohnfläche to Wohnungsgröße for consistency with Flurstücksgröße
* docs: update Berechnungslogik page and README for Fixkosten (#59)
* feat: add /fixkosten CRUD (#60)
* feat: add Fixkosten data model (#60)
* feat: add Fixkosten split calculation (#60)
* feat: add Stammdaten page for Wohnungsgröße/Flurstücksgröße (#61)
* feat: consistent top nav on every page (prototype-style)
* feat: manage Kostenpositionen-Jahre on /stammdaten (#60)
* feat: redesign Dashboard with Jahressummen and 4-Modus Monatsverlauf (#60)
* fix: Monatsverlauf bar-segments/text stayed invisible in every mode
* fix: split Wärmepumpe-Strom kWh per Wohnung in Heizungskosten table
* refactor: address code review findings for #60
* refactor: dedupe stammdaten form parsing, align on Wohnfläche wording



## [v0.3.0] - 2026-09-01

## Changelog
* Point hassio release job at the renamed ha-addons slug (#52)
* Rename project: nebenkosten-energierechner -> nebenkostenrechner (#51)



## [v0.2.2] - 2026-09-01

## Changelog
* Add CSV export (#53) and bootstrap CSV import (#54) for Ablesungen
* Show WP-Strom kWh in Heizungskosten and PV-Anteil in Stromkosten (#50)
* Show Zeitraum alongside Ablesedatum in the overview and detail dropdown



## [v0.2.1] - 2026-09-01

## Changelog
* Fix UpdatePeriod silently dropping meter readings and occupancy for gaps



## [v0.2.0] - 2026-09-01

## Changelog
* Add Docker/HA-Add-on installation section to README, update Tech-Stack
* Add System/Hell/Dunkel theme toggle and dashboard version badge (#48, #49)
* Document Einspeisung (PV feed-in) in README and Berechnungslogik page
* Move Ablesung-Korrektur date-neighbor check into store.UpdatePeriod



## [v0.1.5] - 2026-09-01

## Changelog
* Fix missing price/Personen prefill when correcting the oldest Ablesung, add Einspeisung tracking (#47)



## [v0.1.4] - 2026-09-01

## Changelog
* Allow editing/deleting any Ablesung, add Ablesungen-Übersicht (#41, #43, #44, #45)
* Show Zeitraum on Ablesung detail, unify nav link sizing, rename Dashboard link
* Turn "Neue Ablesung erfassen" and "korrigieren" into buttons, scope "Wie wird gerechnet?" to Dashboard (#46)



## [v0.1.3] - 2026-09-01

## Changelog
* Allow arbitrary decimal precision in Ablesung form inputs



## [v0.1.2] - 2026-09-01

## Changelog
* Add Ablesung-Korrektur, Dashboard-Link, deutsche Zahlenformate (#34, #35, #36)
* Add Verlauf EUR/Verbrauch-Umschalter (#39)
* Add fixed tooltip for Verlauf bar segments too narrow to show EUR text
* Round consumption to max 2 decimals, pad EUR to always 2, unhardcode QM seed (#37, #38, #40)
* Run container as root, not distroless nonroot



## [v0.1.1] - 2026-08-29

## Changelog
* Add GoReleaser changelog/release step, mirroring gcs-connector-evcc
* Update HA add-on repo (larknafets/ha-addons) on release



