set -euo pipefail

DUMP_FILE=/dump.sql

psql "$NEW_DATABASE_URL" -f "$DUMP_FILE"
