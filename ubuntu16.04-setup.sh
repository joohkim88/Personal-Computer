#!/bin/sh
# To be run by superuser
# Ubuntu 16.04 with Unity

# Nextcloud
add-apt-repository ppa:nextcloud-devs/client ;

# Sublime
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | apt-key add - ;
echo "deb https://download.sublimetext.com/ apt/stable/" | tee /etc/apt/sources.list.d/sublime-text.list ;

# Papirus Icons
add-apt-repository ppa:papirus/papirus ;

# Arc Theme
add-apt-repository ppa:noobslab/themes ;

apt update ;
apt dist-upgrade -y ;
apt install -y git vim fish evolution tlp guake gnome-sushi nextcloud-client arc-theme papirus-icon-theme fcitx fcitx-hangul sublime-text vlc network-manager-openvpn-gnome unity-tweak-tool steam chromium-browser;
apt purge -y firefox thunderbird ;
apt autoremove -y ;

usermod -s /usr/bin/fish joo ;
usermod -s /usr/bin/fish root ;

systemctl start tlp ;
systemctl enable tlp ;
