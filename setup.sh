#!/bin/bash

cp cleanup.sh /opt/minecraftftb

cd /opt/minecraftftb

bash cleanup.sh

echo "Copying new files..."

cp -R /tmp/creeperpackinstaller/* /opt/minecraftftb

echo "Copying Mix-ins if any..."

cp -R /mixins/* /opt/minecraftftb/mods

# echo "Creating Minecraft EULA file"
echo "Now starting server 👈😎👈"
echo "eula=true" > eula.txt
exec java -server -XX:+UseG1GC -XX:+UnlockExperimentalVMOptions -Xmx${MAXMEMORY} -Xms${MINMEMORY} -Dfml.queryResult=confirm -XX:+UnlockDiagnosticVMOptions -XX:+DebugNonSafepoints -jar forge-*.jar nogui
