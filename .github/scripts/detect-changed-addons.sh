#!/usr/bin/env bash
# Determines which top-level add-on directories (those containing a
# config.json/yaml/yml) changed between two git refs.
#
# Usage: detect-changed-addons.sh <base-ref> <head-ref>
# Output: a JSON array of add-on directory names on stdout, e.g. ["gcs-connector-evcc"]
set -euo pipefail

if [ "$#" -ne 2 ]; then
  echo "usage: $0 <base-ref> <head-ref>" >&2
  exit 1
fi

base_ref="$1"
head_ref="$2"

changed_config_files=$(git diff --name-only "$base_ref" "$head_ref" | grep -E '^[^/]+/config\.(json|ya?ml)$' || true)

if [ -z "$changed_config_files" ]; then
  echo '[]'
  exit 0
fi

printf '%s\n' "$changed_config_files" \
  | awk -F/ '{print $1}' \
  | sort -u \
  | jq -R -s -c 'split("\n") | map(select(length > 0))'
