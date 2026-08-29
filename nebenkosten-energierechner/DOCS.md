# Nebenkosten-Energierechner

Web-App zur monatlichen Nebenkostenabrechnung für ein Zweifamilienhaus mit Wärmepumpe und PV-Anlage. Berechnet Strom-, Heizung/Warmwasser- und Wasserkosten je Wohnung aus monatlich erfassten Zählerständen.

Dieses Add-on wrappt [nebenkosten-energierechner](https://github.com/larknafets/nebenkosten-energierechner). Alle Eingaben (Zählerstände, Preise, Personenzahl) erfolgen direkt in der App über den Ablese-Wizard - keine Optionen in diesem Tab nötig.

Die App öffnet sich über Ingress direkt im Home-Assistant-Frontend. Daten (SQLite) werden im persistenten `/data`-Verzeichnis des Add-ons gespeichert.

Details zur Berechnungslogik: siehe [nebenkosten-energierechner README](https://github.com/larknafets/nebenkosten-energierechner#readme) oder den Reiter "Wie wird gerechnet?" in der App.
