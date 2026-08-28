#!/usr/bin/env bash
# Resolves the git ref to diff against for change detection.
#
# Usage: resolve-base-ref.sh <event-name> <pull-request-base-sha> <push-before-sha>
# Output: the resolved base ref on stdout — either a SHA, or the hash of the
# empty tree when there's nothing to diff against (first push to a branch/repo,
# or an event with neither SHA set, e.g. workflow_dispatch).
set -euo pipefail

if [ "$#" -ne 3 ]; then
  echo "usage: $0 <event-name> <pull-request-base-sha> <push-before-sha>" >&2
  exit 1
fi

event_name="$1"
pull_request_base_sha="$2"
push_before_sha="$3"

if [ "$event_name" = "pull_request" ]; then
  base="$pull_request_base_sha"
else
  base="$push_before_sha"
fi

if [ -z "$base" ] || [ "$base" = "0000000000000000000000000000000000000000" ]; then
  base=$(git hash-object -t tree /dev/null)
fi

echo "$base"
