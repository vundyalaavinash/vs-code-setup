#!/usr/bin/env bash
# Restore VS Code setup: Warp Dark theme, Hack font, layout, extensions.
# Usage: ./install.sh
set -euo pipefail
cd "$(dirname "$0")"

command -v code >/dev/null || { echo "Install VS Code first and add 'code' to PATH (Cmd+Shift+P > Shell Command)."; exit 1; }

if command -v brew >/dev/null; then
  brew list --cask font-hack >/dev/null 2>&1 || brew install --cask font-hack
else
  echo "Homebrew not found. Install the Hack font manually: https://sourcefoundry.org/hack/"
fi

USER_DIR="$HOME/Library/Application Support/Code/User"
mkdir -p "$USER_DIR"
[ -f "$USER_DIR/settings.json" ] && cp "$USER_DIR/settings.json" "$USER_DIR/settings.json.bak-$(date +%Y%m%d%H%M%S)"
cp settings.json "$USER_DIR/settings.json"

xargs -n1 code --install-extension --force < extensions.txt

echo "Done. Reload VS Code (Cmd+Shift+P > Reload Window)."
