#!/usr/bin/env bash
# Copies the Midjourney Viewer promo page from the plugin repo's docs/ folder
# into public/midjourney-viewer/. The plugin repo is the single source of truth;
# run this after editing docs/index.html there, then commit and deploy.
set -euo pipefail
SRC="${1:-$HOME/Projects/obsidian-midjourney-viewer/docs}"
DST="$(cd "$(dirname "$0")/.." && pwd)/public/midjourney-viewer"
[ -f "$SRC/index.html" ] || { echo "no index.html in $SRC" >&2; exit 1; }
rm -rf "$DST"; mkdir -p "$DST"
cp -r "$SRC"/. "$DST"/
echo "synced $SRC -> $DST"
