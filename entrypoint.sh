#!/bin/bash

# How you invoke the command.  If you installed steamcmd manually, point this to the executable.
# I installed steamcmd manually, so the executable is located in /home/steam.
EXECUTABLE="/home/steam/steamcmd"

# SCP:SL requires an active account that has launched the game at least once.
# The "anonymous" user cannot be used. You must use an account with a password.
STEAM_USERNAME="anonymous";
STEAM_PASSWORD="";

# Where you want the server files to go.
FORCE_INSTALL_DIR="/home/scp/scp_server"

# The ID of the app you want to install.  SCP:SL is 700330.
# This particular game also requires being in the Linux beta (which for some reason
# still requires you to download the Windows version).
APPID="700330 -beta linux";

# Will validate all files on install/update.
# You can leave this blank, but I usually just keep it on.
VALIDATE="validate";

$EXECUTABLE \
+@ShutdownOnFailedCommand 1 \
+@sSteamCmdForcePlatformType windows \
+login $STEAM_USERNAME $STEAM_PASSWORD \
+force_install_dir $FORCE_INSTALL_DIR \
+app_update $APPID $VALIDATE \
+quit