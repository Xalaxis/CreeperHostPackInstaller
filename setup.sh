#!/bin/bash

cp cleanup.sh /opt/minecraftftb

cd /opt/minecraftftb

if [ "$DONTUPDATE" == "True" ]; then
     echo "Operating in manual mode!"
     echo "Updating disabled. Not overwriting files."
else
     bash cleanup.sh

     echo "Copying new files..."

     cp -R /tmp/creeperpackinstaller/* /opt/minecraftftb

     echo "Copying Mix-ins if any..."

     cp -R /mixins/* /opt/minecraftftb/mods
fi

# echo "Creating Minecraft EULA file"
echo "Now starting server 👈😎👈"
echo "eula=true" > eula.txt
exec java -server -XX:+UseG1GC -XX:+UnlockExperimentalVMOptions -Xmx${MAXMEMORY} -Xms${MINMEMORY} -Dfml.queryResult=confirm -XX:+UnlockDiagnosticVMOptions -XX:+DebugNonSafepoints -jar forge-*.jar nogui
