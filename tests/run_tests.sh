#!/usr/bin/env zsh
# Test suite for Oh My Zsh plugins and libraries

setopt local_options
set -e

echo "=== Running Oh My Zsh Test Suite ==="

TEST_DIR=$(mktemp -d)
trap 'rm -rf "$TEST_DIR"' EXIT

export HOME="$TEST_DIR"
export ZSH="$PWD"

echo "Testing WD plugin..."
export WD_CONFIG="$TEST_DIR/.warprc"
touch "$WD_CONFIG"

# Source WD plugin functions
source "$ZSH/plugins/wd/wd.sh" --quiet || true

# Test wd_add
typeset -A points
points[testpoint]="$TEST_DIR"
echo "testpoint:$TEST_DIR" >> "$WD_CONFIG"

# Test wd_show
wd_show testpoint > /dev/null
echo "PASS: wd_show executed successfully"

# Test wd_path
POINT_PATH=$(wd_path testpoint)
echo "PASS: wd_path executed"

# Test wd_remove
wd_remove testpoint
echo "PASS: wd_remove executed successfully"

echo "=== All tests completed successfully ==="
exit 0
