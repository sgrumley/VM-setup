# Step 1
ssh-keygen -t ed25519 -b 4096 -C "grumsamu@gmail.com"

# Step 2 start ssh agent and add key to it
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519

# Step 3
sudo apt-get install xclip
# Copies the contents of the id_ed25519.pub file to your clipboard
xclip -sel clip < ~/.ssh/id_ed25519.pub

# step 4 
# paste to github settings
https://github.com/settings/keys

#step 5
# unsure if this is needed
#run the below code - allows docker containers to  access ssh key
#echo 'export SSH_PRIVATE_KEY="$(cat ~/.ssh/id_ed25519)"' | sudo tee -a /etc/profile

# step 6
# Add global variables
git config --global user.email "grumsamu@gmail.com"
git config --global user.name "Sam Grumley"