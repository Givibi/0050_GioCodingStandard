# Changelog – GioCodingStandard

Format: `[Version] – Datum – Beschreibung – Status`
Status: `neu` | `bewährt` | `promoted` (in LEXI übernommen) | `verworfen`

---

## [0.1.0] – 2026-06-30

### Neu
- **cursor-workspace-setup** – Regel + Templates für stabiles Cursor Workspace-Management
  - `.cursor/rules/gio-coding-standard.mdc` (Hauptregel, alwaysApply)
  - `templates/new-project/PROJEKTNAME.code-workspace`
  - `templates/new-project/FIX_CHATS.command` (Recovery-Script)
  - Hintergrund: Verlust von Chat-Sessions bei Workspace-Wechsel (2026-06-29)
  - Status: `neu` – wird im CV-KI-Projekt erprobt
