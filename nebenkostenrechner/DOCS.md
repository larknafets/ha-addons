# Nebenkostenrechner

Web-App zur monatlichen Nebenkostenabrechnung für ein Zweifamilienhaus mit Wärmepumpe und PV-Anlage. Berechnet Strom-, Heizung/Warmwasser- und Wasserkosten je Wohnung aus monatlich erfassten Zählerständen.

Dieses Add-on wrappt [nebenkostenrechner](https://github.com/larknafets/nebenkostenrechner). Alle Eingaben (Zählerstände, Preise, Personenzahl) erfolgen direkt in der App über den Ablese-Wizard - keine Optionen in diesem Tab nötig.

Die App öffnet sich über Ingress direkt im Home-Assistant-Frontend. Daten (SQLite) werden unter `/addon_configs/<repo>_nebenkostenrechner` auf dem Host gespeichert (im Container unter `/config` gemountet) - so per Samba-Share oder File-Editor-Add-on erreichbar. Ein Update von einer älteren Add-on-Version übernimmt eine bestehende Datenbank aus dem alten `/data`-Verzeichnis automatisch beim ersten Start.

Details zur Berechnungslogik: siehe [nebenkostenrechner README](https://github.com/larknafets/nebenkostenrechner#readme) oder den Reiter "Wie wird gerechnet?" in der App.

## Dashboard-Widgets in Lovelace

Für kleine, einzelne Karten im eigenen Dashboard (statt der ganzen App über Ingress) stellt das Add-on 3 read-only Routen auf einem eigenen Port bereit - **ohne Login**, da HA-Ingress-URLs sich nicht zuverlässig in ein Iframe einbetten lassen. Dieser Port ist standardmäßig nur im lokalen Netzwerk erreichbar, nicht übers Internet.

- `http://<home-assistant-ip>:8081/widget/jahressumme/{entity}` - nur die Jahressummen-Karte
- `http://<home-assistant-ip>:8081/widget/verbrauchswerte/{entity}` - nur das Verbrauchswerte-Panel (Verbrauch/Verbrauchswerte/Fixkosten/Kombiniert bleibt umschaltbar)
- `http://<home-assistant-ip>:8081/widget/uebersicht/{entity}` - beide Ansichten untereinander auf einer Seite

`{entity}` ist eine von: `wohnung-1`, `wohnung-2`, `wallboxen`, `pv-anlage`.

In Lovelace per **Webpage-Card** einbinden (Bearbeiten → Karte hinzufügen → "Webseite" bzw. `type: iframe`), URL wie oben, Höhe je nach Widget anpassen.
