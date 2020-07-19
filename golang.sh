sudo apt-get -y install software-properties-common
sudo add-apt-repository ppa:longsleep/golang-backports
sudo apt-get update
#sudo apt-get -y upgrade
su - ${USER}
sudo apt-get -y install golang-1.14-go
cd ~
mkdir go
cd go
mkdir src
mkdir bin
mkdir pkg

echo "export GOPATH=$HOME/go" | sudo tee -a /etc/profile
sudo echo 'export GOBIN=$HOME/go/bin' | sudo tee -a /etc/profile
sudo echo 'export PATH=$PATH:$GOPATH/bin' | sudo tee -a /etc/profile
sudo echo 'export PATH=$PATH:/usr/lib/go-1.14/bin' | sudo tee -a /etc/profile
sudo echo 'export GO111MODULE=on' | sudo tee -a /etc/profile
