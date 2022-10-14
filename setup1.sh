#!/bin/sh
#Scipt 3.0 by Abelatox
#Pop!_OS 22.04
#Wine
dpkg --add-architecture i386 &&
#wget -nc https://dl.winehq.org/wine-builds/ubuntu/dists/jammy/winehq-jammy.sources &&
#mv winehq-jammy.sources /etc/apt/sources.list.d &&
wget -nc -O /etc/apt/sources.list.d/winehq-jammy.sources https://dl.winehq.org/wine-builds/ubuntu/dists/jammy/winehq-jammy.sources &&

#Curtail
add-apt-repository -y ppa:apandada1/curtail &&

#Arronax
add-apt-repository -y ppa:diesch/stable &&

#PCSX2 Unstable
add-apt-repository -y ppa:pcsx2-team/pcsx2-daily &&

apt update &&
apt upgrade -y &&

apt install -y --install-recommends winehq-devel &&
apt install -y winetricks exe-thumbnailer curtail arronax &&

#Games
apt install -y steam pcsx2-unstable &&

#Apache
apt install -y apache2 php &&

#Other programs
apt install -y --ignore-missing gnome-tweaks gnome-shell-extensions screen cowsay lolcat neofetch htop discord tilix cura gnome-sushi nautilus-image-converter dconf-editor &&

echo "Deleting line to disable Left Super opening the launcher"
sed -i.bak -e '/    overview_toggle(overlay_key_action);/d' /usr/share/gnome-shell/extensions/pop-cosmic@system76.com/extension.js
echo "Now installing extensions: ArcMenu and DashToPanel"
wget -O /usr/bin/gnome-shell-extension-installer "https://github.com/brunelli/gnome-shell-extension-installer/raw/master/gnome-shell-extension-installer" &&
chmod +x gnome-shell-extension-installer &&
su -c "gnome-shell-extension-installer --restart-shell 3628" abel &&
su -c "gnome-shell-extension-installer --restart-shell 1160" abel
