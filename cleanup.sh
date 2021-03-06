#!/bin/bash
set -e # Error out immediately on failed line
set +x # Don't print commands as they are run

echo "Cleaning up old installation (if any, exluding world and property files)..."
# We shouldn't need to check for existance, because the folder must exist to allow it to be mounted.
# The aim is to delete anything that doesn't need to be persistent between upgrades
echo "Deleting mods..." # Mods may change between versions
rm -rf ./mods
echo "Deleting forge jars..." # The version of Forge may change
rm -f forge-*
echo "Deleting Minecraft jars..." # The version of Minecraft may change
rm -f minecraft_server*
echo "Deleting libraries..." # Unsure if libraries might change
rm -rf ./libraries
echo "Deleting kubejs..." # Not sure what this folder is, but I don't think anything persistent is stored in it
rm -rf ./kubejs
echo "Deleting packmenu..." # Not sure what this folder is, but I don't think anything persistent is stored in it
rm -rf ./packmenu
echo "Deleting old installers..." # These shouldn't conflict, but I'm deleting them in-case they ever have a hotfix release with the same name
rm -f serverinstall*
echo "Cleanup Complete ✅"
echo "=========================="