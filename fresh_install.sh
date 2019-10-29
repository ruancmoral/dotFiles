
sudo apt-get update
sudo apt-get install -y curl feh vim i3 gimp arandr pavucontrol vlc htop kazam audacity youtube-dl python3-pip python-pip python3-tk 

#fix nauitulus to i3 
gsettings set org.gnome.desktop.background show-desktop-icons false

#pip install pandas matplotlib seaborn pygame scikit-learn --user
#pip3 install jupyter --user


#spotify
curl -sS https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list


sudo apt-get update && sudo apt-get install spotify-client
 

#playerctl to music control (https://askubuntu.com/questions/1080671/how-can-i-install-playerctl)
wget http://ftp.nl.debian.org/debian/pool/main/p/playerctl/libplayerctl2_2.0.1-1_amd64.deb
wget http://ftp.nl.debian.org/debian/pool/main/p/playerctl/playerctl_2.0.1-1_amd64.deb
sudo dpkg -i libplayerctl2_2.0.1-1_amd64.deb playerctl_2.0.1-1_amd64.deb


