#!/usr/bin/env bash

# Install zsh
echo 'Installing zsh...'
sudo apt-get install -y zsh > /dev/null 2>&1

# Install oh-my-zsh
echo 'Installing oh-my-zsh...'
sudo su - vagrant -c 'wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh' > /dev/null 2>&1

# Set to specified theme
echo 'Configuring zsh & oh-my-zsh...'
sudo sed -i "s/ZSH_THEME=\"robbyrussell\"/ZSH_THEME=\"$1\"/" /home/vagrant/.zshrc > /dev/null 2>&1

# Add /sbin to PATH
sudo sed -i 's=:/bin:=:/bin:/sbin:=' /home/vagrant/.zshrc > /dev/null 2>&1

# Change vagrant user's default shell
chsh vagrant -s $(which zsh)

# Load aliases
echo 'source "/home/vagrant/.bash_aliases"' >> /home/vagrant/.zshrc

echo 'Done.'
