# CreeperHostPackInstaller (CHPI) 💿

![Build and Push Latest Versions](https://github.com/Xalaxis/CreeperHostPackInstaller/workflows/Build%20and%20Push%20Latest%20Versions/badge.svg)
 
Intermediary container to handle downloading a CreeperHost Modpack (As far as I'm aware, just Feed the Beast ones) and installing it. See my [FTB-Revelation](https://github.com/Xalaxis/FTB-Revelation) container for an example.

## Environment variables to set in descendant containers

Variable | Purpose | Default
---------|---------|---------
VERSION | Version of the modpack wanted, "LATEST" for the latest available | LATEST
MODPACKID | CreeperHost ID for the modpack wanted | N/A
MAXMEMORY | Maximum memory for the Java VM | 4G
MINMEMORY | Minimum memory for the Java VM | 3072M

## Mount locations

Container Path | Purpose
---------------|---------
/opt/minecraftftb | Location of the server files
/mixins | Mix-in mods, see below

## Mix-ins

Any content placed in the /mixins directory will be automatically added to the /mods directory of the server after the installation is complete. This can be used to add additional mods, such as DynMap, to the server.

## Java versions

There are currently two different tags for this image, java8 and java11 which use the referenced Java JRE version.

## Mod Removals in later versions of a pack

This container has -Dfml.queryResult=confirm set, which means that in the event of any mod removals between versions, the change will be silently accepted.
