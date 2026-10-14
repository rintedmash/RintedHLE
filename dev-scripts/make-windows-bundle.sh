#!/bin/sh
set -e

# Bundles the RintedHLE executable with the basic set of files needed for
# RintedHLE to run (the same ones found in the macOS .app bundle or Android APK).
# This does not prepare a full release.

if [[ $# == 1 ]]; then
    PATH_TO_BINARY="$1"
    shift

    rm -rf RintedHLE_windows_bundle
    mkdir RintedHLE_windows_bundle
    cp $PATH_TO_BINARY RintedHLE_windows_bundle/
    cp -r ../RintedHLE_dylibs RintedHLE_windows_bundle/
    cp -r ../RintedHLE_fonts RintedHLE_windows_bundle/
    cp -r ../RintedHLE_default_options.txt RintedHLE_windows_bundle/
    cp ../RintedHLE_wallpaper.png RintedHLE_windows_bundle/
else
    echo "Incorrect usage."
    exit 1
fi
