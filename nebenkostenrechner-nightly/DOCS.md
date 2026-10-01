# Nebenkostenrechner (Nightly)

Dieses Add-on enthält den jeweils neuesten Stand von `main` des [nebenkostenrechner](https://github.com/larknafets/nebenkostenrechner). Die Version heißt `nightly.JJJJMMTT-<Commit>`. Ein Workflow baut sie jede Nacht, wenn es in den letzten 24 Stunden einen Commit gab, und aktualisiert dann diese Add-on-Konfiguration. Die letzten 7 Images bleiben erhalten.

Bedienung, Login und Widgets sind wie beim Add-on "Nebenkosten", siehe dessen [Dokumentation](../nebenkostenrechner/DOCS.md).

## Unterschiede zum Release

- **Eigene Daten:** Die Datenbank liegt im eigenen Add-on-Ordner unter `/addon_configs/<repo>_nebenkostenrechner-nightly`. Der Release-Add-on bleibt unberührt, ein Wechsel nimmt aber auch keine Daten mit.
- **Eigener Port:** Die Widget-Routen laufen auf Host-Port **8082** (Release: 8081), beide Add-ons können gleichzeitig laufen.
- **Nie zurückkopieren:** Der Nightly kann die Datenbank auf ein neueres Schema bringen. Die Datenbank des Nightly nicht in den Release-Add-on kopieren.
- **Sichern:** Wer Daten aus dem Nightly behalten will, exportiert sie als CSV (Ablesungen, Fixkosten) und notiert die Stammdaten, sie sind nicht im CSV enthalten.
