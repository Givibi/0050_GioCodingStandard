# GioCodingStandard

Giovannis persönliche Erweiterungsschicht zum [LEXI Coding Standard](https://github.com/GiovannisGitHub/0005_LEXICodingStandard).

## Konzept

```
0005_LEXICodingStandard   ← Basis, geteilt, abgestimmt
       ↑
GioCodingStandard         ← Persönlich, Experimente, neue Muster
       ↑
Kundenprojekte            ← Binden GioCodingStandard als Workspace-Folder ein
```

Neue Muster entstehen hier. Wenn sie sich bewährt haben, werden sie in den LEXI Coding Standard promoted.

## Einbinden in ein Projekt

In der `.code-workspace`-Datei des Projekts den GioCodingStandard-Ordner hinzufügen:

```json
{
    "folders": [
        { "path": "." },
        { "path": "../GioCodingStandard" }
    ],
    "settings": {}
}
```

Cursor lädt damit automatisch alle `alwaysApply: true`-Regeln aus diesem Repo.

## Struktur

```
GioCodingStandard/
├── .cursor/rules/
│   └── gio-coding-standard.mdc   ← Hauptregel (alwaysApply: true)
├── templates/
│   ├── new-project/               ← Ergänzungen zum LEXI new-project Template
│   │   ├── PROJEKTNAME.code-workspace
│   │   └── FIX_CHATS.command
│   └── spec-module/               ← Ergänzungen zum LEXI spec-module Template
├── scripts/                       ← Hilfsskripte
├── CHANGELOG.md                   ← Dokumentiert Änderungen + Promotions zu LEXI
└── README.md
```

## Promotion-Flow

1. Neues Muster entsteht in einem Projekt
2. Es wird hier als Template oder Regel dokumentiert
3. Nach Bewährung in ≥1 Projekt: Besprechung mit LEXI
4. Promotion in `0005_LEXICodingStandard`
5. Eintrag in `CHANGELOG.md` mit Status `promoted`
