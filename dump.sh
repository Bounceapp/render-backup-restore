set -euo pipefail

DUMP_FILE=/dump.sql

pg_dump_database() {
  pg_dump -v --no-owner --no-privileges --clean --if-exists --quote-all-identifiers "$OLD_DATABASE_URL" -f "$DUMP_FILE"
}

pg_restore_database() {
  psql "$NEW_DATABASE_URL" -f "$DUMP_FILE"
}

pg_dump_database
pg_restore_database