#!/usr/bin/env bash
rm -f "$HOME/.local/bin/igfix"
rm -f "$HOME/.local/share/applications/igfix.desktop"
command -v update-desktop-database >/dev/null && update-desktop-database "$HOME/.local/share/applications" || true
echo "Uninstalled igfix"
