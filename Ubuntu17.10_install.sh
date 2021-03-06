#!/bin/sh
# To be run by superuser
# Ubuntu 16.10 with Gnome

# Seadrive
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 8756C4F765C9AC3CB6B85D62379CE192D401AB61 ;
echo deb http://deb.seadrive.org artful main | tee /etc/apt/sources.list.d/seafile.list ;

# Seafile
# add-apt-repository ppa:seafile/seafile-client ;

# Nextcloud
add-apt-repository ppa:nextcloud-devs/client ;

# Sublime
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | apt-key add - ;
echo "deb https://download.sublimetext.com/ apt/stable/" | tee /etc/apt/sources.list.d/sublime-text.list ;

# Papirus Icons
add-apt-repository ppa:papirus/papirus ;

apt update ;
apt dist-upgrade -y ;
apt install -y git vim fish evolution tlp guake gnome-sushi nextcloud-client papirus-icon-theme fcitx fcitx-hangul sublime-text vlc network-manager-openvpn-gnome gnome-tweak-tool steam ;
apt purge -y thunderbird ;
apt autoremove -y ;

usermod -s /usr/bin/fish joo ;
usermod -s /usr/bin/fish root ;

systemctl start tlp ;
systemctl enable tlp ;
