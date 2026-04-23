#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/../.."

export NO_MKDOCS_2_WARNING=true

exec python3 -m mkdocs serve "$@"
