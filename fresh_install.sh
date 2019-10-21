
sudo apt-get update
sudo apt-get install -y curl feh vim i3 gimp arandr pavucontrol vlc htop kazam audacity youtube-dl python3-pip python-pip python3-tk 

#fix nauitulus to i3 
gsettings set org.gnome.desktop.background show-desktop-icons false
pip install pandas matplotlib seaborn pygame scikit-learn --user
pip3 install jupyter --user


#spotify
curl -sS https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list


sudo apt-get update && sudo apt-get install spotify-client
 
