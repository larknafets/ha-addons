Full release details: https://github.com/larknafets/nebenkostenrechner/releases

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



