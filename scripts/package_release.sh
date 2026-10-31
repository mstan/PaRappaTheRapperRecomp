#!/usr/bin/env bash
# The maintained shared release workflow owns generation, profiles and packaging.
# --channel public|playtest is required; use --platform windows|linux|all.
set -euo pipefail
root=$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)
fw=${PSXRECOMP_ROOT:-"$root/psxrecomp"}
exec bash "$fw/tools/package_title_release.sh" --root "$root" --jobs 2 "$@"
