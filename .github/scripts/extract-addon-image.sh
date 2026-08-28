#!/usr/bin/env bash
# Extracts the image and version an add-on's config.yaml declares.
#
# Usage: extract-addon-image.sh <addon-dir>
# Output: a JSON object on stdout, e.g. {"image":"ghcr.io/org/addon","version":"0.0.4"}
set -euo pipefail

if [ "$#" -ne 1 ]; then
  echo "usage: $0 <addon-dir>" >&2
  exit 1
fi

config_file="$1/config.yaml"

CONFIG_FILE="$config_file" ruby -ryaml -rjson -e "
  config = YAML.load_file(ENV.fetch('CONFIG_FILE'))
  puts JSON.generate(image: config.fetch('image'), version: config.fetch('version'))
"
