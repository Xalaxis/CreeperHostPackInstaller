# CreeperHostPackInstaller (CHPI) 💿
 
Intermediary container to handle downloading a CreeperHost Modpack (As far as I'm aware, just Feed the Beast ones) and installing it.

## Environment variables to set in descendant containers

Variable | Purpose | Default
---------|---------|---------
VERSION | Version of the modpack wanted, "LATEST" for the latest available | LATEST
MODPACKID | CreeperHost ID for the modpack wanted | N/A
MAXMEMORY | Maximum memory for the Java VM | 4G
MINMEMORY | Minimum memory for the Java VM | 3072M
