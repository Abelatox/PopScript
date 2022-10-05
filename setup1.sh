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
apt install -y winetricks &&
apt install -y exe-thumbnailer &&

apt install -y curtail &&

#Games
apt install -y steam &&
apt install -y pcsx2 &&

#Apache
apt install -y apache2 &&
apt install -y php &&


#Other programs
apt install -y gnome-tweaks &&
apt install -y gnome-shell-extensions &&
apt install -y cowsay &&
apt install -y lolcat &&
apt install -y neofetch &&
apt install -y htop &&
apt install -y discord &&
apt install -y arronax &&
apt install -y tilix &&
apt install -y cura &&

echo "Now install ArcMenu and DashToPanel"
