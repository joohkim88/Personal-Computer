#!/bin/sh
# To be run by superuser

# Seadrive
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 8756C4F765C9AC3CB6B85D62379CE192D401AB61 ;
echo deb http://deb.seadrive.org artful main | tee /etc/apt/sources.list.d/seafile.list ;

# Seafile
add-apt-repository ppa:seafile/seafile-client ;

# Nextcloud
add-apt-repository ppa:nextcloud-devs/client ;

# Sublime
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add - ;
echo "deb https://download.sublimetext.com/ apt/stable/" | tee /etc/apt/sources.list.d/sublime-text.list ;

# Papirus Theme
add-apt-repository ppa:papirus/papirus ;

# Arc Theme
# add-apt-repository ppa:noobslab/themes ;

# Vivacious Theme
# add-apt-repository ppa:ravefinity-project/ppa ;

apt update ;
apt dist-upgrade -y ;
apt install -y git vim fish evolution tlp guake gnome-sushi nextcloud-client seafile-gui redshift papirus-icon-theme arc-theme fcitx fcitx-hangul sublime-text vlc mpv network-manager-openvpn-gnome gnome-tweak-tool steam ;
apt purge -y thunderbird ;
apt autoremove -y ;

usermod -s /usr/bin/fish joo ;
usermod -s /usr/bin/fish root ;

systemctl start tlp ;
systemctl enable tlp ;
