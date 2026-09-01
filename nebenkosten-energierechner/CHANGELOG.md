Full release details: https://github.com/larknafets/nebenkosten-energierechner/releases

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



