#!/usr/bin/env bash
# Copies the Quick Voice Note landing page from the plugin repo's docs/ folder
# into public/quick-voice-note/. The plugin repo is the single source of truth;
# run this after editing docs/index.html there, then commit and deploy.
# The same folder is served as the root of quickvoicenote.com (see Caddyfile).
set -euo pipefail
SRC="${1:-$HOME/Software Projects/quick-voice-note/docs}"
DST="$(cd "$(dirname "$0")/.." && pwd)/public/quick-voice-note"
[ -f "$SRC/index.html" ] || { echo "no index.html in $SRC" >&2; exit 1; }
rm -rf "$DST"; mkdir -p "$DST"
cp -r "$SRC"/. "$DST"/
echo "synced $SRC -> $DST"
