#!/bin/sh
set -e

# Bundles the RintedHLE executable with the basic set of files needed for
# RintedHLE to run (the same ones found in the macOS .app bundle or Android APK).
# This does not prepare a full release.

if [ "$#" -eq 1 ]; then
    PATH_TO_BINARY="$1"
    shift

    rm -rf RintedHLE_linux_bundle
    mkdir RintedHLE_linux_bundle
    cp $PATH_TO_BINARY RintedHLE_linux_bundle/
    cp -r ../RintedHLE_dylibs RintedHLE_linux_bundle/
    cp -r ../RintedHLE_fonts RintedHLE_linux_bundle/
    cp -r ../RintedHLE_default_options.txt RintedHLE_linux_bundle/
    cp ../RintedHLE_wallpaper.png RintedHLE_linux_bundle/
else
    echo "Incorrect usage."
    exit 1
fi
