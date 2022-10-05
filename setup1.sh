#!/bin/sh
#Scipt 2.0 by Abelatox
#Pop!_OS 22.04
#Wine
dpkg --add-architecture i386 &&
wget -nc https://dl.winehq.org/wine-builds/ubuntu/dists/jammy/winehq-jammy.sources &&
mv winehq-jammy.sources /etc/apt/sources.list.d &&

#Curtail
add-apt-repository -y ppa:apandada1/curtail &&

apt update &&
apt upgrade -y &&

apt install -y --install-recommends winehq-devel &&
apt install -y winetricks exe-thumbnailer curtail &&

#Games
apt install -y steam pcsx2 &&

#Apache
apt install -y apache2 php


#Other programs
apt install -y gnome-tweaks gnome-shell-extensions cowsay lolcat neofetch htop discord arronax tilix cura &&

echo "Now install ArcMenu and DashToPanel"
