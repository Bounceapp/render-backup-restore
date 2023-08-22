#! /bin/bash
set -euo pipefail

screen -L -S "$(basename $1)" -dm $1
