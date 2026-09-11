# Changelog

Full release details: https://github.com/larknafets/nebenkostenrechner/releases

## v0.11.2 - 2026-09-11

## Changelog
### Bug Fixes
* Abschlag-Balken im Monatsverlauf auf Mobile umbrechen lassen


## v0.11.1 - 2026-09-10

## Changelog

### Bug Fixes
* Reihenfolge Bug-Fixes/New-Features im Changelog-Matching korrigieren
### Refactoring
* handlers.go nach Konzepten aufteilen
* Widget-Handler ueber gemeinsame resolveWidgetView buendeln
* Teilstand-Erfasst-Status in eigenes Modul buendeln
* Real- und Demo-Session auf gemeinsame sessionKind-Mechanik umstellen
* GetPeriodDetails auf AllPeriodDetails-Hydration umstellen
* GetFixkostenEingabeDetails auf AllFixkostenEingabenDetails-Hydration umstellen
* CSV-Import/Export-Pipeline fuer Ablesungen und Fixkosten vereinheitlichen
* AbschlagSaldo-Akkumulation aus buildDashboardVerlauf extrahieren


## v0.11.0 - 2026-09-09

### New Features
* CSV Export/Import fuer Fixkosteneingaben (#132, #133)

## v0.10.2 - 2026-09-09

### Bug Fixes
* Login-Kennwort ueber Supervisor-API statt options.json lesen

## v0.10.1 - 2026-09-09

### New Features
* Zaehlerstand-Anzeige mit 3 Nachkommastellen

### Bug Fixes
* Diagnose-Logging fuer Login-Kennwort-Aufloesung ergaenzen

### Other Changes
* AGENTS.md aktualisieren

## v0.10.0 - 2026-09-07

### New Features
* Teilstand sichtbar machen - Anzeige + gefuehrter Wizard
* Teilstand ohne Login vervollstaendigen koennen
* Ablesung ueber den Wizard unvollstaendig anlegen (Teilstand)
* Store-Ebene fuer Teilstand - Preise nullable, Vollstaendigkeits-Query
* Demo-Login-Einstiegspunkt ohne LOGIN_PASSWORD + Demo-Banner
* Demo-Datenbank bei jedem Demo-Login zurueckgesetzt
* Demo-Login schaltet auf separate, automatisch angelegte Demo-DB
* Generator fuer 39 Monate realitaetsnahe Demo-Testdaten
* optionales Login-Kennwort mit serverseitiger Berechtigungsdurchsetzung

### Bug Fixes
* Abmelden-Link nicht mehr parallel zu Anmelden bei LOGIN_PASSWORD=""
* Dashboard-Permissions korrigieren, Ablesung-Erfassung ohne Login erlauben
* leeres Dashboard fehlte UpdateAvailable/LatestVersion im Template-Data
* Login raeumt jeweils andere Session-Cookie symmetrisch ab

### Refactoring
* Demo/Echt-DB-Entscheidung als eigenen testbaren Seam extrahieren
* secret als blosser String durch auth-Modul ersetzt
* Nav-Fakten (Base/IsLoggedIn/IsDemoSession/ShowLoginEntry) in navData buendeln
* DB-Auswahl je Request ueber Context statt fester NewMux-Variable

## v0.9.0 - 2026-09-06

### New Features
* Fixkosten-Formular - alle 14 Positionen editierbar, vererbt vom Vormonat
* fixkosten_werte um logik/typ erweitern, Backfill aus Stammdaten-Jahren
* Speichern-Buttons auf Stammdaten erst nach Aenderung aktivieren
* PV-kWh-Zeile auf Wohnung-2-Karte (Nicht dem Netzbezug zugeordnet)
* Guthaben/Nachzahlung-Anzeige und Abschlag-Reiter in HA-Widgets nachziehen
* Nebenkostenabschlag mit Guthaben/Nachzahlung-Anzeige

### Bug Fixes
* kein Zeilenumbruch zwischen Wert und Einheit (kWh/m²/m³/MWh/EUR)
* kein Zeilenumbruch zwischen Wert und € bei EUR-Anzeigen
* Nebenkostenabschlag auf Fixkosten-Detailseite anzeigen
* Flurstuecksgroesse-Badge zeigt km² statt m² ab 1000 m²
* Guthaben-Saldo ignoriert Monate ohne Fixkosten-Eingabe
* Guthaben-Saldo bei luckenhaftem Monat, Abstandshalter-Position

### Refactoring
* Stammdaten-Kostenpositionen aufraeumen, kostenpositionen_jahre droppen
* calc.Fixkosten liest Logik/Typ/Wert direkt aus der Eingabe
* Jahr-Extraktion vereinheitlichen, abschlag-value-Block teilen
* Saldo-Orchestrierung in buildEntityView buendeln
* walkJahre durch generische gruppiereNachJahr ersetzen
* Monatsverlauf-Markup zwischen Dashboard und Widgets teilen
* AbschlagSaldo-Typ statt Betrag/Guthaben/Nachzahlung-Tripel

### Other Changes
* revert: Flurstuecksgroesse km²-Umschaltung entfernen

## v0.8.1 - 2026-09-05

### Bug Fixes
* HA-Add-on-DB-Pfad wechselt auf addon_configs, mit Migration

## v0.8.0 - 2026-09-05

### New Features
* Update-Hinweis im Dashboard-Footer bei neuem GitHub-Release
* Ablesungen einem Abrechnungsmonat zuordnen (#86)
* kombinierte HA-Widget-Uebersicht (Jahressumme + Verbrauchswerte)

### Bug Fixes
* Monatsverlauf-Balken nie ueber 100%, Nav-Ruecklink nur auf Detailseiten
* Tausenderpunkt beim CSV-Import korrekt parsen (#87)
* Container als nonroot-User statt root laufen lassen

### Refactoring
* handlers.go in Module aufteilen, Jahreszeile-Aggregation entdoppeln

## v0.7.0 - 2026-09-04

### New Features
* Ingress-freie Widget-Routen fuer Home-Assistant-Dashboards
* Icon-Badges fuer Wohnungsgroesse/Flurstueck/Personen, deutsches Tausendertrennzeichen
* Verbrauchswerte auf genau 2 Nachkommastellen auffuellen
* Flurstuecksgroesse-Badge und Personen-Schnitt auf Jahressummen-Karte anzeigen
* Legende folgt aktivem Monatsverlauf-Modus, farbige Verbrauchswerte
* Absolute Differenz zur vorherigen Ablesung in Zaehler-Tabelle anzeigen

### Bug Fixes
* Tatsaechliche kWh in Dashboard-Verbrauchswerte statt PV-gedeckeltem abgerechnetem Anteil anzeigen

## v0.6.0 - 2026-09-03

### New Features
* PV-Anteil in Wallboxen-Jahressummen-Karte anzeigen
* Tatsaechliche kWh statt nur abgerechneter Werte in Dashboard-Verbrauchswerte/Wallbox anzeigen

### Refactoring
* Redundante KPI-Strip-Boxen aus Dashboard-Tab-Panels entfernen

## v0.5.1 - 2026-09-03

### Bug Fixes
* Fixkosten jaehrlich-Werte leer durch ungueltigen Zahlen-Input-Wert - behoben, veraltete Kostenposition-Labels synchronisiert

## v0.5.0 - 2026-09-03

### New Features
* Wallbox/PV-Anlage Dashboard-Entitaeten ergaenzen, Seiten-Navigation vereinheitlichen (#67)

### Refactoring
* Wallbox/PV-Anlage Serien-Identitaet in simpleSeries buendeln

## v0.4.0 - 2026-09-03

### New Features
* Einheitliche obere Navigation auf jeder Seite (Prototyp-Stil)
* Dashboard mit Jahressummen und 4-Modus-Monatsverlauf neu gestalten (#60)
* Kostenpositionen-Jahre auf /stammdaten verwalten (#60)
* /fixkosten CRUD ergaenzen (#60)
* Fixkosten-Aufteilungsberechnung ergaenzen (#60)
* Fixkosten-Datenmodell ergaenzen (#60)
* Stammdaten-Seite fuer Wohnungsgroesse/Flurstuecksgroesse ergaenzen (#61)

### Bug Fixes
* Monatsverlauf-Balkensegmente/-Text blieben in jedem Modus unsichtbar - behoben
* Waermepumpe-Strom kWh je Wohnung in Heizungskosten-Tabelle aufteilen

### Refactoring
* Code-Review-Befunde zu #60 adressieren
* Stammdaten-Formular-Parsing entdoppeln, auf Wohnflaeche-Wortwahl vereinheitlichen

## v0.3.0 - 2026-09-01

### Other Changes
* hassio-Release-Job auf den umbenannten ha-addons-Slug umstellen (#52)
* Projekt umbenennen: nebenkosten-energierechner -> nebenkostenrechner (#51)

## v0.2.2 - 2026-09-01

### Other Changes
* Zeitraum neben Ablesedatum in Uebersicht und Detail-Dropdown anzeigen
* CSV-Export (#53) und Bootstrap-CSV-Import (#54) fuer Ablesungen ergaenzen
* WP-Strom kWh in Heizungskosten und PV-Anteil in Stromkosten anzeigen (#50)

## v0.2.1 - 2026-09-01

### Other Changes
* UpdatePeriod verwirft bei Luecken still Zaehlerstaende und Belegung - behoben

## v0.2.0 - 2026-09-01

### Other Changes
* Docker/HA-Add-on-Installationsabschnitt im README ergaenzen, Tech-Stack aktualisieren
* Ablesung-Korrektur Datums-Nachbar-Pruefung nach store.UpdatePeriod verschoben
* System/Hell/Dunkel-Theme-Umschalter und Dashboard-Versions-Badge ergaenzen (#48, #49)
* Einspeisung (PV-Einspeisung) im README und auf der Berechnungslogik-Seite dokumentieren

## v0.1.5 - 2026-09-01

### Other Changes
* Fehlende Preis-/Personen-Vorbelegung bei Korrektur der aeltesten Ablesung behoben, Einspeisung-Tracking ergaenzt (#47)

## v0.1.4 - 2026-09-01

### Other Changes
* "Neue Ablesung erfassen" und "korrigieren" zu Buttons machen, "Wie wird gerechnet?" auf Dashboard beschraenken (#46)
* Zeitraum auf Ablesung-Detail anzeigen, Nav-Link-Groessen vereinheitlichen, Dashboard-Link umbenennen
* Bearbeiten/Loeschen beliebiger Ablesungen erlauben, Ablesungen-Uebersicht ergaenzen (#41, #43, #44, #45)

## v0.1.3 - 2026-09-01

### Other Changes
* Beliebige Nachkommastellen-Genauigkeit in Ablesung-Formularfeldern erlauben

## v0.1.2 - 2026-09-01

### Other Changes
* Container als root statt distroless nonroot laufen lassen
* Verbrauch auf max. 2 Nachkommastellen runden, EUR immer auf 2 auffuellen, QM-Seed nicht mehr hartkodiert (#37, #38, #40)
* Festen Tooltip fuer zu schmale Verlauf-Balkensegmente ergaenzen, die den EUR-Text nicht zeigen koennen
* Verlauf EUR/Verbrauch-Umschalter ergaenzen (#39)
* Ablesung-Korrektur, Dashboard-Link und deutsche Zahlenformate ergaenzen (#34, #35, #36)

## v0.1.1 - 2026-08-29

### Other Changes
* HA-Add-on-Repo (larknafets/ha-addons) bei Release aktualisieren
* GoReleaser-Changelog/Release-Schritt ergaenzen, angelehnt an gcs-connector-evcc

