#!/usr/bin/env bats

SCRIPT="$(cd "$(dirname "$BATS_TEST_FILENAME")" && pwd)/resolve-base-ref.sh"
EMPTY_TREE_SHA="4b825dc642cb6eb9a060e54bf8d69288fbee4904"

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

@test "pull_request event resolves to the pull request base sha" {
  run "$SCRIPT" "pull_request" "abc123" "def456"
  [ "$status" -eq 0 ]
  [ "$output" = "abc123" ]
}

@test "push event resolves to the push before sha" {
  run "$SCRIPT" "push" "" "def456"
  [ "$status" -eq 0 ]
  [ "$output" = "def456" ]
}

@test "push event with an all-zero before sha falls back to the empty tree" {
  run "$SCRIPT" "push" "" "0000000000000000000000000000000000000000"
  [ "$status" -eq 0 ]
  [ "$output" = "$EMPTY_TREE_SHA" ]
}

@test "push event with an empty before sha falls back to the empty tree" {
  run "$SCRIPT" "push" "" ""
  [ "$status" -eq 0 ]
  [ "$output" = "$EMPTY_TREE_SHA" ]
}
