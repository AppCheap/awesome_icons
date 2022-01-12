#!/bin/bash
echo "starting the build process"

echo "generating awesome_icons.dart file"
dart --no-sound-null-safety ./tool/generate_fonts.dart ./fonts/icons.json ./fonts/brands.json ./fonts/regular.json ./fonts/solid.json

echo "formatting awesome_icons.dart file"
dart format lib -l120

echo "build process completed successfully"