#!/bin/sh
# To be run by superuser

# Seadrive
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 8756C4F765C9AC3CB6B85D62379CE192D401AB61 ;
echo deb http://deb.seadrive.org zesty main | tee /etc/apt/sources.list.d/seafile.list ;

# Nextcloud
add-apt-repository ppa:nextcloud-devs/client ;

# Sublime
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add - ;
echo "deb https://download.sublimetext.com/ apt/stable/" | tee /etc/apt/sources.list.d/sublime-text.list ;

# Papirus Theme
add-apt-repository ppa:papirus/papirus ;

apt update ;
apt dist-upgrade -y ;
apt install -y git vim fish evolution tlp guake gnome-sushi nextcloud-client seadrive-gui papirus-icon-theme arc-theme redshift fcitx fcitx-hangul sublime-text ;
apt autoremove -y ;

usermod -s /usr/bin/fish joo ;
usermod -s /usr/bin/fish root ;
