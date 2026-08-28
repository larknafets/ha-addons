#!/usr/bin/env bats

SCRIPT="$(cd "$(dirname "$BATS_TEST_FILENAME")" && pwd)/detect-changed-addons.sh"

setup() {
  TEST_REPO="$(mktemp -d)"
  cd "$TEST_REPO"
  git init --quiet -b main
  git config user.name "test"
  git config user.email "test@example.com"
}

teardown() {
  rm -rf "$TEST_REPO"
}

# Commits whatever is currently in the working tree and echoes the new sha.
commit() {
  git add -A
  git commit --quiet -m "$1"
  git rev-parse HEAD
}

@test "single add-on folder changed" {
  mkdir -p addon-a
  echo "name: A" > addon-a/config.yaml
  base=$(commit "base")

  echo "name: A2" > addon-a/config.yaml
  head=$(commit "bump addon-a")

  run "$SCRIPT" "$base" "$head"
  [ "$status" -eq 0 ]
  [ "$output" = '["addon-a"]' ]
}

@test "multiple add-on folders changed in one push" {
  mkdir -p addon-a addon-b
  echo "name: A" > addon-a/config.yaml
  echo "name: B" > addon-b/config.yaml
  base=$(commit "base")

  echo "name: A2" > addon-a/config.yaml
  echo "name: B2" > addon-b/config.yaml
  head=$(commit "bump both")

  run "$SCRIPT" "$base" "$head"
  [ "$status" -eq 0 ]
  [ "$output" = '["addon-a","addon-b"]' ]
}

@test "no add-on folder touched" {
  mkdir -p addon-a
  echo "name: A" > addon-a/config.yaml
  echo "hello" > README.md
  base=$(commit "base")

  echo "hello world" > README.md
  head=$(commit "readme only")

  run "$SCRIPT" "$base" "$head"
  [ "$status" -eq 0 ]
  [ "$output" = '[]' ]
}

@test "only repository.yaml changed" {
  mkdir -p addon-a
  echo "name: A" > addon-a/config.yaml
  echo "name: Repo" > repository.yaml
  base=$(commit "base")

  echo "name: Repo v2" > repository.yaml
  head=$(commit "repository.yaml only")

  run "$SCRIPT" "$base" "$head"
  [ "$status" -eq 0 ]
  [ "$output" = '[]' ]
}

@test "changed folder without a config.yaml is ignored" {
  mkdir -p addon-a not-an-addon
  echo "name: A" > addon-a/config.yaml
  echo "hi" > not-an-addon/README.md
  base=$(commit "base")

  echo "hi again" > not-an-addon/README.md
  head=$(commit "touch non-addon folder")

  run "$SCRIPT" "$base" "$head"
  [ "$status" -eq 0 ]
  [ "$output" = '[]' ]
}
