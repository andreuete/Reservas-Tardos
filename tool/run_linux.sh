#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/.."

if [[ -n "${XDG_DATA_DIRS_VSCODE_SNAP_ORIG:-}" ]]; then
  export XDG_DATA_DIRS="$XDG_DATA_DIRS_VSCODE_SNAP_ORIG"
fi

exec env \
  -u GSETTINGS_SCHEMA_DIR \
  -u GTK_EXE_PREFIX \
  -u GTK_PATH \
  -u GIO_MODULE_DIR \
  -u GTK_IM_MODULE_FILE \
  -u GTK_MODULES \
  flutter run -d linux "$@"
