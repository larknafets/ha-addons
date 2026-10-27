# Nebenkostenrechner

Web-App zur monatlichen Nebenkostenabrechnung für ein Zweifamilienhaus mit Wärmepumpe und PV-Anlage. Berechnet Strom-, Heizung/Warmwasser- und Wasserkosten, Fixkosten und Abschlag je Wohnung aus monatlich erfassten Zählerständen/Eingaben.

Dieses Add-on wrappt [nebenkostenrechner](https://github.com/larknafets/nebenkostenrechner). Alle Eingaben erfolgen direkt in der App über den Ablese-Wizard - keine Optionen in diesem Tab nötig.

Die App öffnet sich über Ingress direkt im Home-Assistant-Frontend. Daten (SQLite) werden unter `/addon_configs/<repo>_nebenkostenrechner` auf dem Host gespeichert (im Container unter `/config` gemountet) - so per Samba-Share oder File-Editor-Add-on erreichbar. Ein Update von einer älteren Add-on-Version übernimmt eine bestehende Datenbank aus dem alten `/data`-Verzeichnis automatisch beim ersten Start.

Details zur Berechnungslogik: siehe [nebenkostenrechner README](https://github.com/larknafets/nebenkostenrechner#readme) oder den Reiter "Wie wird gerechnet?" in der App.

## Login (optional)

Standardmäßig ist die App offen - jeder mit Zugriff auf dieses Add-on-Panel kann alles sehen und bearbeiten (jeder ist Vermieter). Optional per **Kennwort** absichern: unter Konfiguration das **Vermieter-Kennwort** (`vermieter_password`) setzen. Leer lassen (Standard) deaktiviert den Login komplett.

> **Nach dem Update neu setzen:** Das frühere Login-Kennwort (`login_password`) heißt jetzt Vermieter-Kennwort und wird nicht mehr übernommen. Wer vorher ein Kennwort gesetzt hatte, muss es unter Konfiguration neu setzen. Bis dahin ist die App offen und jeder Besucher ist Vermieter.

Zusätzlich gibt es einen **Mieter-Login** mit dem optionalen **Mieter-Kennwort** (`mieter_password`). Es wirkt nur zusammen mit dem Vermieter-Kennwort. Was der Mieter und nicht angemeldete Besucher sehen und tun dürfen, stellt der Vermieter in der App unter Stammdaten → Berechtigungen ein. Fixkosten ändern, Abrechnung und die Berechtigungen selbst bleiben dem Vermieter vorbehalten.

Ist ein Vermieter-Kennwort gesetzt, sieht ein nicht angemeldeter Besucher nur, was für ihn freigegeben ist (standardmäßig z. B. nur Wohnung 2 und die Wärmepumpe auf dem Dashboard). Über "Anmelden" in der Navigation wählst du im Feld "Anmelden als" Mieter, Vermieter oder Demo und gibst das Kennwort ein (die Demo braucht keins).
