#!/bin/bash
# FIX_CHATS.command – Cursor Chat Recovery
# Doppelklick auf macOS öffnet Terminal und stellt verlorene Chat-Sessions wieder her.

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
WORKSPACE_FILE=$(ls "$SCRIPT_DIR"/*.code-workspace 2>/dev/null | head -1)

echo "=== Cursor Chat Recovery ==="

if [ -z "$WORKSPACE_FILE" ]; then
    echo "FEHLER: Keine .code-workspace-Datei gefunden in $SCRIPT_DIR"
    read -p "Drücke Enter zum Beenden..."
    exit 1
fi

echo "Workspace: $WORKSPACE_FILE"
echo ""

if pgrep -x "Cursor" > /dev/null; then
    echo "Cursor läuft noch. Bitte schliesse Cursor jetzt (Cmd+Q)."
    echo "Warte auf Cursor-Beendigung..."
    while pgrep -x "Cursor" > /dev/null; do
        sleep 2
    done
    echo "Cursor beendet."
fi

MIGRATE_SCRIPT="$SCRIPT_DIR/scripts/migrate_chats_to_workspace.py"
if [ -f "$MIGRATE_SCRIPT" ]; then
    echo "Starte Migration..."
    python3 "$MIGRATE_SCRIPT"
    echo ""
fi

echo "Öffne Cursor mit: $WORKSPACE_FILE"
open "$WORKSPACE_FILE"

echo "Fertig."
read -p "Drücke Enter zum Beenden..."
