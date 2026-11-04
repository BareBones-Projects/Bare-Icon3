#!/usr/bin/env bash
# BARE ICON3 local static server. Creator/maintainer: BareBones Projects.
set -euo pipefail
cd "$(dirname "${BASH_SOURCE[0]}")"
PORT="${PORT:-8000}"
exec python3 -m http.server "$PORT" --bind 127.0.0.1
