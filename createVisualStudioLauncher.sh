#!/bin/bash
################ Description: ###################
# Creates a launcher for visual-studio-code if 
# its installed with umake.
################ Parameter: #####################
# NONE
################ Implementation: ################
userName=`whoami`
desktopFilePath="/home/$userName/.local/share/umake/ide/visual-studio-code/visual-studio-code.desktop"
launcherPath="/home/$userName/.local/share/applications"
desktopFileContent=`echo -e "[Desktop Entry] \n
Version=1.0 \n
Type=Application \n
Name=Visual Studio Code \n
Icon=/home/$userName/.local/share/umake/ide/visual-studio-code/resources/app/resources/linux/code.png \n
Exec=\"/home/$userName/.local/share/umake/ide/visual-studio-code/code\" %f
Categories=Development;IDE; \n
Terminal=false \n
"`
clear

if test -f $desktopFilePath
then
    echo "[*] Creating *.desktop file" 
    touch $desktopFilePath
    echo "$desktopFileContent" > $desktopFilePath
    echo "[*] Copying launcher"
    cp $desktopFilePath $launcherPath
    echo "[*] Setting execution bit"
    chmod +x $launcherPath/visual-studio-code.desktop
else
    echo "[-] Visual-Studio-Code launcher already exists"
    exit 1  
fi
