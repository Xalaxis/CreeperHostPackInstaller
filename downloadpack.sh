#!/bin/bash
set -e # Error out immediately on failed line
set +x # Don't print commands as they are run

echo "Looking for version: $VERSION"
echo "Looking for packID: $MODPACKID"

# If we're using the latest version (it's not manually specified)
if [ "$VERSION" == "LATEST" ]
# Lookup the latest version available from the API and save it to the version variable
then VERSION=$(curl https://api.modpacks.ch/public/modpack/$MODPACKID/ | jq '.versions[-1].id'); fi;

# We shouldn't need to check for existance, because the folder must exist to allow it to be mounted.
# Switch working directory
#cd /opt/minecraftftb

echo "Downloading installer..."
wget https://api.modpacks.ch/public/modpack/$MODPACKID/$VERSION/server/linux --content-disposition
#echo "Renaming..."
#mv ./serverinstall_"$MODPACKID"_"$VERSION" ./serverinstall
echo "Making it executable..."
chmod +x ./serverinstall_"$MODPACKID"_"$VERSION"

# echo "Creating Minecraft EULA file"
RUN echo "eula=true" > eula.txt
ENTRYPOINT [ "bash", "-c", "java -server -XX:+UseG1GC -XX:+UnlockExperimentalVMOptions -Xmx${MAXMEMORY} -Xms${MINMEMORY} -Dfml.queryResult=confirm -jar forge-*.jar nogui" ]