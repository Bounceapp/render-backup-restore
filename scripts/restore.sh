#! /bin/bash

set -euo pipefail

DUMP_FILE=/dump.sql

echo "Starting restore"

psql "$NEW_DATABASE_URL" -f "$DUMP_FILE"

echo "Restore finished"