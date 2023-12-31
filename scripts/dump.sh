#! /bin/bash

set -euo pipefail

DUMP_FILE=/dump.sql

echo "Starting dump"

pg_dump -v --no-owner --no-privileges --clean --if-exists --quote-all-identifiers "$OLD_DATABASE_URL" -f "$DUMP_FILE"

echo "Dump finished"
