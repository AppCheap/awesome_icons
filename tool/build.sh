#!/usr/bin/env bash
set -euo pipefail
echo "starting the build process"

echo "generating awesome_icons.dart file"
dart run ./tool/generate_fonts.dart ./fonts/icons.json ./fonts/brands.json ./fonts/regular.json ./fonts/solid.json

echo "formatting awesome_icons.dart file"
dart format lib tool test -l 120

echo "build process completed successfully"
