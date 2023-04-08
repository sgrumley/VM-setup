# move to snap
sudo apt update
sudo apt upgrade
sudo apt install golang-go

# Go env settings
sudo echo 'export PATH=$PATH:/usr/go/bin' | sudo tee -a /etc/profile
