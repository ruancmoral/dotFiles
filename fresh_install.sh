
#spotify 
curl -sS https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list


sudo apt update
sudo apt install -y curl feh vim i3  python3-pip python-pip python3-tk wget
sudo apt install -y spotify-client gimp arandr pavucontrol vlc htop kazam audacity youtube-dl

#fix nauitulus to i3 
gsettings set org.gnome.desktop.background show-desktop-icons false

#pip install pandas matplotlib seaborn pygame scikit-learn --user
#pip3 install jupyter --user


# playerctl to music control (https://askubuntu.com/questions/1080671/how-can-i-install-playerctl)
wget http://ftp.nl.debian.org/debian/pool/main/p/playerctl/libplayerctl2_2.0.1-1_amd64.deb
wget http://ftp.nl.debian.org/debian/pool/main/p/playerctl/playerctl_2.0.1-1_amd64.deb
sudo dpkg -i libplayerctl2_2.0.1-1_amd64.deb playerctl_2.0.1-1_amd64.deb
rm *.deb

## Docker
# Set up the repository
sudo apt -y install apt-transport-https ca-certificates curl gnupg-agent software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

# Install Docker Engine
sudo apt update
sudo apt -y install docker-ce docker-ce-cli containerd.io

## Docker Compose
sudo apt install docker-compose
