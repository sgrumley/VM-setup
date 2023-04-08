# https://www.tecmint.com/install-zsh-in-ubuntu/
sudo apt install zsh

echo $SHELL
# should be chsh -s /usr/bin/zsh
chsh -s $(which zsh) 

zsh # press 2

#### spaceship
sudo apt-get install fonts-powerline

# https://github.com/ryanoasis/nerd-fonts/releases/download/v2.3.3/FiraMono.zip
# 1.) Download a Nerd Font

# 2.) Unzip and copy to ~/.fonts

# 3.) Run the command fc-cache -fv to manually rebuild the font cache

sudo snap install starship --edge

# sudo apt-get install npm

# sudo npm install -g spaceship-prompt

eval "$(starship init zsh)"

touch ~/.spaceshiprc.zsh