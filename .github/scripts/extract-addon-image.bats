#!/usr/bin/env bats

SCRIPT="$(cd "$(dirname "$BATS_TEST_FILENAME")" && pwd)/extract-addon-image.sh"

setup() {
  TEST_DIR="$(mktemp -d)"
}

teardown() {
  rm -rf "$TEST_DIR"
}

@test "extracts image and version from a well-formed config.yaml" {
  mkdir -p "$TEST_DIR/addon-a"
  cat > "$TEST_DIR/addon-a/config.yaml" <<'EOF'
name: A
image: ghcr.io/org/addon-a
version: "1.2.3"
EOF

  run "$SCRIPT" "$TEST_DIR/addon-a"
  [ "$status" -eq 0 ]
  [ "$output" = '{"image":"ghcr.io/org/addon-a","version":"1.2.3"}' ]
}

@test "fails when the image key is missing" {
  mkdir -p "$TEST_DIR/addon-a"
  cat > "$TEST_DIR/addon-a/config.yaml" <<'EOF'
name: A
version: "1.2.3"
EOF

  run "$SCRIPT" "$TEST_DIR/addon-a"
  [ "$status" -ne 0 ]
}

@test "fails when the version key is missing" {
  mkdir -p "$TEST_DIR/addon-a"
  cat > "$TEST_DIR/addon-a/config.yaml" <<'EOF'
name: A
image: ghcr.io/org/addon-a
EOF

  run "$SCRIPT" "$TEST_DIR/addon-a"
  [ "$status" -ne 0 ]
}
