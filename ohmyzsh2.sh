#!/bin/bash

Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green
Yellow='\033[0;33m'       # Yellow
Blue='\033[0;34m'         # Blue
Purple='\033[0;35m'       # Purple
Cyan='\033[0;36m'         # Cyan
Color_Off='\033[0m'       # Text Reset

    echo -e "${Blue}***${Red}"##"${Green}#***${Yellow}#${Blue}*#${Yellow}#***#${Yellow}#***${Purple}#**${Cyan}*#***#***#${Blue}##***#${Yellow}*#*#***${Purple}##***#***${Blue}#**${Purple}"


    echo #############################################################

    echo устанвливаем oh-my-szh powerlevel10
    echo -e "${Blue}***${Red}"##"${Green}#***${Yellow}#${Blue}*#${Yellow}#***#${Yellow}#***${Purple}#**${Cyan}*#***#***#${Blue}##***#${Yellow}*#*#***${Purple}##***#***${Blue}#**"
    echo #############################################################
        sleep 3 


git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k 
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-/home/dfyz/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting 
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-/home/dfyz/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

    echo #############################################################


    echo -e "${Blue}***${Red}"##"${Green}#***${Yellow}#${Blue}*#${Yellow}#***#${Yellow}#***${Purple}#**${Cyan}*#***#***#${Blue}##***#${Yellow}*#*#***${Purple}##***#***${Blue}#**"
    echo #############################################################
        sleep 3
sudo mv ex.zshrc .zshrc
        sleep 1
sudo mv ex.p10k.zsh .p10k.zsh
        sleep 1
sudo cp -r .zshrc /home/dfyz/
sudo cp -r .p10k.zsh /home/dfyz/
cd /home/dfyz/

    echo #############################################################

    echo end!
    echo -e "${Blue}***${Red}"##"${Green}#***${Yellow}#${Blue}*#${Yellow}#***#${Yellow}#***${Purple}#**${Cyan}*#***#***#${Blue}##***#${Yellow}*#*#***${Purple}##***#***${Blue}#**"
    echo #############################################################
        sleep 3
mc
