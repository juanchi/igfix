#!/usr/bin/env bash
set -euo pipefail

PREFIX="$HOME/.local"
BIN_DIR="$PREFIX/bin"
APP_DIR="$HOME/.local/share/applications"

command -v ffmpeg >/dev/null || { echo "ffmpeg required"; exit 1; }

mkdir -p "$BIN_DIR" "$APP_DIR"

install -m 755 bin/igfix "$BIN_DIR/igfix"
install -m 644 bin/igfix.desktop "$APP_DIR/igfix.desktop"

command -v update-desktop-database >/dev/null && update-desktop-database "$APP_DIR" || true

echo "Installed igfix"
