# Changelog – GioCodingStandard

Format: `[Version] – Datum – Beschreibung – Status`
Status: `neu` | `bewährt` | `promoted` (in LEXI übernommen) | `verworfen`

---

## [0.3.0] – 2026-07-01

### Neu
- **neuer-chat-pro-modul** – Workflow für saubere Chat-Trennung zwischen Modulen
  - Neuer Chat pro Modul (nicht pro Projekt)
  - Rules laden automatisch – kein Summary-Chat nötig
  - Schnelltest „Was ist der aktuelle Projektstand?" zur Verifikation
  - Voraussetzung: Workspace über .code-workspace geöffnet
  - Erstmals explizit dokumentiert nach Abschluss code_quality-Modul (2026-07-01)
  - Status: `neu`

---

## [0.2.0] – 2026-07-01

### Neu
- **git-branching-modul-abschluss** – Workflow für Feature-Branch pro Modul + PR-Prozess
  - Ein Branch pro Modul (`Feature_<ModulName>`) → Merge in `main` nach Phase-6-Abnahme
  - PR über GitHub.com (nicht GitHub Desktop) – saubere Dokumentation, Branch-Löschung mit einem Klick
  - Conventional Commits Titel-Format für PRs
  - PR-Beschreibung Vorlage (Spec-Phasen, Implementierung, Testergebnis, nächster Schritt)
  - Lokales Aufräumen nach Merge: `git checkout main && git pull && git branch -d Feature_...`
  - Cursor-Neustart wenn Branch-Anzeige nicht aktualisiert
  - Erstmals erprobt: CV-KI-Plattform, Modul code_quality (2026-07-01)
  - Status: `neu`

---

## [0.1.0] – 2026-06-30

### Neu
- **cursor-workspace-setup** – Regel + Templates für stabiles Cursor Workspace-Management
  - `.cursor/rules/gio-coding-standard.mdc` (Hauptregel, alwaysApply)
  - `templates/new-project/PROJEKTNAME.code-workspace`
  - `templates/new-project/FIX_CHATS.command` (Recovery-Script)
  - Hintergrund: Verlust von Chat-Sessions bei Workspace-Wechsel (2026-06-29)
  - Status: `neu` – wird im CV-KI-Projekt erprobt
