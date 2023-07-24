#!/bin/bash
sudo apt install zsh -y
sleep 1
sudo chsh -s /usr/bin/zsh 
sleep 1
 
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
