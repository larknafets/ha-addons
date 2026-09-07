Full release details: https://github.com/larknafets/nebenkostenrechner/releases

## [v0.10.0] - 2026-09-07

## Changelog
* docs: Datenmodell aktualisieren, Nebenkostenabschlag dokumentieren
* docs: Hinweis zu geteilter Demo-Session-Cookie bei lokalen Instanzen
* docs: Issue-Nummern-Referenzen aus README entfernen
* docs: README ueberarbeiten (Formulierungen, Einliegerwohnung-Kontext, Guthaben/Nachzahlung-Uebersicht)
* docs: README-Einleitung präzisieren
* docs: Teilstand-Feature in README dokumentieren
* feat: Ablesung über den Wizard unvollständig anlegen (Teilstand)
* feat: Demo-Datenbank bei jedem Demo-Login zurueckgesetzt
* feat: Demo-Login schaltet auf separate, automatisch angelegte Demo-DB
* feat: Demo-Login-Einstiegspunkt ohne LOGIN_PASSWORD + Demo-Banner
* feat: Generator fuer 39 Monate realitaetsnahe Demo-Testdaten
* feat: Store-Ebene für Teilstand - Preise nullable, Vollständigkeits-Query
* feat: Teilstand ohne Login vervollständigen können
* feat: Teilstand sichtbar machen - Anzeige + geführter Wizard
* feat: optionales Login-Kennwort mit serverseitiger Berechtigungsdurchsetzung
* fix: Abmelden-Link nicht mehr parallel zu Anmelden bei LOGIN_PASSWORD=""
* fix: Dashboard-Permissions korrigieren, Ablesung-Erfassung ohne Login erlauben
* fix: Login raeumt jeweils andere Session-Cookie symmetrisch ab
* fix: leeres Dashboard fehlte UpdateAvailable/LatestVersion im Template-Data
* refactor: DB-Auswahl je Request ueber Context statt fester NewMux-Variable
* refactor: Demo/Echt-DB-Entscheidung als eigenen testbaren Seam extrahieren
* refactor: Nav-Fakten (Base/IsLoggedIn/IsDemoSession/ShowLoginEntry) in navData buendeln
* refactor: secret als bloßer String durch auth-Modul ersetzt
* style: Reiter 4 umbenennen, Personen-Felder nach oben verschieben



## [v0.9.0] - 2026-09-06

## Changelog
* docs: ADR für Kostenpositionen-Verlagerung in die Fixkosten-Eingabe
* feat: Fixkosten-Formular - alle 14 Positionen editierbar, vererbt vom Vormonat
* feat: Guthaben/Nachzahlung-Anzeige und Abschlag-Reiter in HA-Widgets nachziehen
* feat: Nebenkostenabschlag mit Guthaben/Nachzahlung-Anzeige
* feat: PV-kWh-Zeile auf Wohnung-2-Karte (Nicht dem Netzbezug zugeordnet)
* feat: Speichern-Buttons auf Stammdaten erst nach Änderung aktivieren
* feat: fixkosten_werte um logik/typ erweitern, Backfill aus Stammdaten-Jahren
* fix: Flurstücksgröße-Badge zeigt km² statt m² ab 1000 m²
* fix: Guthaben-Saldo bei luckenhaftem Monat, Abstandshalter-Position
* fix: Guthaben-Saldo ignoriert Monate ohne Fixkosten-Eingabe
* fix: Nebenkostenabschlag auf Fixkosten-Detailseite anzeigen
* fix: kein Zeilenumbruch zwischen Wert und Einheit (kWh/m²/m³/MWh/EUR)
* fix: kein Zeilenumbruch zwischen Wert und € bei EUR-Anzeigen
* refactor: AbschlagSaldo-Typ statt Betrag/Guthaben/Nachzahlung-Tripel
* refactor: Jahr-Extraktion vereinheitlichen, abschlag-value-Block teilen
* refactor: Monatsverlauf-Markup zwischen Dashboard und Widgets teilen
* refactor: Saldo-Orchestrierung in buildEntityView bündeln
* refactor: Stammdaten-Kostenpositionen aufräumen, kostenpositionen_jahre droppen
* refactor: calc.Fixkosten liest Logik/Typ/Wert direkt aus der Eingabe
* refactor: walkJahre durch generische gruppiereNachJahr ersetzen
* revert: Flurstücksgröße km²-Umschaltung entfernen
* style: "Endstand:"-Praefix aus Abschlag-Jahreszeile entfernen
* style: Jahr-loeschen-Button rechts neben Speichern
* style: Monatsverlauf-Modus-Buttons ueber die Legende, rechtsbuendig
* style: PV-kWh-Zeile Wohnung 2 an Kategorien-Zeile anhängen statt eigene Zeile
* style: Stammdaten nach Wohnungen in eigene Karten aufteilen



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



