#!/bin/bash
echo "starting the build process"

echo "generating awesome_icons.dart file"
dart --no-sound-null-safety ./tool/generate_fonts.dart ./otfs/icons.json

echo "formatting awesome_icons.dart file"
dart format lib -l120

echo "build process completed successfully"