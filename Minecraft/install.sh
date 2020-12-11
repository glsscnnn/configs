#!/bin/sh

# get minecraft
wget https://launcher.mojang.com/download/Minecraft.deb
ar xf Minecraft.deb
tar xf data.tar.xz -C /
rm control.tar.gz data.tar.xz debian-binary Minecraft.deb

echo "Are you running solus linux 0 for no 1 for yes."
read input

if [ $input == 1 ]
then
    # edit .desktop file
    sed '6d' /usr/share/applications/minecraft-launcher.desktop
    sed -i '$aExec=env JAVA_HOME=/usr/lib64/openjdk-8 /opt/minecraft-launcher/minecraft-launcher/' /usr/share/applications/minecraft-launcher.desktop
    usysconf run -f
else
    exit
fi

