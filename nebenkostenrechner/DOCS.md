# Nebenkostenrechner

Web-App zur monatlichen Nebenkostenabrechnung für ein Zweifamilienhaus mit Wärmepumpe und PV-Anlage. Berechnet Strom-, Heizung/Warmwasser- und Wasserkosten, Fixkosten und Abschlag je Wohnung aus monatlich erfassten Zählerständen/Eingaben.

Dieses Add-on wrappt [nebenkostenrechner](https://github.com/larknafets/nebenkostenrechner). Alle Eingaben erfolgen direkt in der App über den Ablese-Wizard - keine Optionen in diesem Tab nötig.

Die App öffnet sich über Ingress direkt im Home-Assistant-Frontend. Daten (SQLite) werden unter `/addon_configs/<repo>_nebenkostenrechner` auf dem Host gespeichert (im Container unter `/config` gemountet) - so per Samba-Share oder File-Editor-Add-on erreichbar. Ein Update von einer älteren Add-on-Version übernimmt eine bestehende Datenbank aus dem alten `/data`-Verzeichnis automatisch beim ersten Start.

Details zur Berechnungslogik: siehe [nebenkostenrechner README](https://github.com/larknafets/nebenkostenrechner#readme) oder den Reiter "Wie wird gerechnet?" in der App.

## Login (optional)

Standardmäßig ist die App offen - jeder mit Zugriff auf dieses Add-on-Panel kann alles sehen und bearbeiten. Optional per **Kennwort** absichern: unter Konfiguration → `login_password` ein Kennwort setzen. Leer lassen (Standard) deaktiviert den Login komplett.

Ist ein Kennwort gesetzt, sieht ein nicht angemeldeter Besucher nur eingeschränkte, lesende Ansichten (z. B. nur Wohnung 2 auf dem Dashboard) - alle Eingabe-/Änderungs-Buttons sind ausgeblendet und die zugehörigen Aktionen serverseitig gesperrt. Über den "Login"-Link in der Navigation lässt sich das Kennwort eingeben, danach ist wieder alles wie gewohnt nutzbar.
