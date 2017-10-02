#!/bin/sh
# To be run by superuser

# Seadrive
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 8756C4F765C9AC3CB6B85D62379CE192D401AB61 ;
echo deb http://deb.seadrive.org xenial main | tee /etc/apt/sources.list.d/seafile.list ;

# Seafile
# add-apt-repository ppa:seafile/seafile-client ;

# Nextcloud
add-apt-repository ppa:nextcloud-devs/client ;

# Sublime
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add - ;
echo "deb https://download.sublimetext.com/ apt/stable/" | tee /etc/apt/sources.list.d/sublime-text.list ;

# Papirus Theme
add-apt-repository ppa:papirus/papirus ;

# Arc Theme
echo 'deb http://download.opensuse.org/repositories/home:/Horst3180/xUbuntu_16.04/ /' > /etc/apt/sources.list.d/arc-theme.list ;

apt update ;
apt dist-upgrade -y ;
apt install -y git vim fish evolution tlp guake gnome-sushi nextcloud-client seadrive-gui redshift papirus-icon-theme arc-theme fcitx fcitx-hangul sublime-text vlc mpv network-manager-openvpn-gnome unity-tweak-tool ;
apt purge -y thunderbird ;
apt autoremove -y ;

usermod -s /usr/bin/fish joo ;
usermod -s /usr/bin/fish root ;

systemctl start tlp ;
systemctl enable tlp ;
