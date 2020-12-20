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
