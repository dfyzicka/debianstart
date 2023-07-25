#!/bin/bash

Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green
Yellow='\033[0;33m'       # Yellow
Blue='\033[0;34m'         # Blue
Purple='\033[0;35m'       # Purple
Cyan='\033[0;36m'         # Cyan
Color_Off='\033[0m'       # Text Reset

echo -e "${Blue}***${Red}"##"${Green}#***${Yellow}#${Blue}*#${Yellow}#***#${Yellow}#***${Purple}#**${Cyan}*#***#***#${Blue}##***#${Yellow}*#*#***${Purple}##***#***${Blue}#**${Purple}"

#${Red}
#${Green}
#${Yellow}
#${Blue}
#${Purple}
#${Cyan}
#${Color_Off}
#####################################################################
#####################################################################
####################################################################


echo -e "${Blue}***${Red}"##"${Green}#***${Yellow}#${Blue}*#${Yellow}#***#${Yellow}#***${Purple}#**${Cyan}*#***#***#${Blue}##***#${Yellow}*#*#***${Purple}##***#***${Blue}#**${Color_Off}"
neofetch
echo -e "${Blue}***${Red}"##"${Green}#***${Yellow}#${Blue}*#${Yellow}#***#${Yellow}#***${Purple}#**${Cyan}*#***#***#${Blue}##***#${Yellow}*#*#***${Purple}##***#***${Blue}#**${Purple}"
sudo chmod +x *.sh 
echo #############################################################

sudo chmod -R 777 /home/dfyz/debianstart/
echo переиминуются и переносятся файлы .nanorc .env 
echo gptbot botRoll rolldice.service mcSkins
echo -e "${Blue}***${Red}"##"${Green}#***${Yellow}#${Blue}*#${Yellow}#***#${Yellow}#***${Purple}#**${Cyan}*#***#***#${Blue}##***#${Yellow}*#*#***${Purple}##***#***${Blue}#**${Red}"
echo #############################################################
sleep 5

mv ex.nanorc .nanorc && cp -r .nanorc /home/dfyz/
sleep 1
mv gptbot/ex.env gptbot/.env && cp -r gptbot /home/dfyz/
sleep 1
mv rollDice/ex.env rollDice/.env && cp -r rollDice /home/dfyz/
sleep 1

mkdir -p /home/dfyz/.local/share/mc/skins && cp -r mcSkins/skins/* /home/dfyz/.local/share/mc/skins
sleep 1
mkdir -p /home/dfyz/.config/mc/
sleep 1
cp ini /home/dfyz/.config/mc/
sleep 1
sed -i 's/skin=default/skin=dracula256/' /home/dfyz/.config/mc/ini 
echo #############################################################
echo mc skins установлены
echo #############################################################
sleep 3

echo установка dry
echo -e "${Blue}***${Red}"##"${Green}#***${Yellow}#${Blue}*#${Yellow}#***#${Yellow}#***${Purple}#**${Cyan}*#***#***#${Blue}##***#${Yellow}*#*#***${Purple}##***#***${Blue}#**"
echo #############################################################
sleep 3

curl -sSf https://moncho.github.io/dry/dryup.sh | sudo sh && sudo chmod 755 /usr/local/bin/dry

echo #############################################################
echo копирование ботов

echo #############################################################
pwd 
echo #############################################################
sleep 3

echo #############################################################

echo сборка контейнера gpt
echo -e "${Blue}***${Red}"##"${Green}#***${Yellow}#${Blue}*#${Yellow}#***#${Yellow}#***${Purple}#**${Cyan}*#***#***#${Blue}##***#${Yellow}*#*#***${Purple}##***#***${Blue}#**${Yellow}"
echo #############################################################
sleep 3

cd /home/dfyz/gptbot/

echo #############################################################
pwd 
echo #############################################################

sudo docker build -t gptbot . && sudo docker run -d --restart always gptbot
echo -e "${Blue}***${Red}"##"${Green}#***${Yellow}#${Blue}*#${Yellow}#***#${Yellow}#***${Purple}#**${Cyan}*#***#***#${Blue}##***#${Yellow}*#*#***${Purple}##***#***${Blue}#**${Blue}"
echo #############################################################

echo gpt бот собран и запущен

echo #############################################################
sleep3

echo сборка контейнера rollDice
echo -e "${Blue}***${Red}"##"${Green}#***${Yellow}#${Blue}*#${Yellow}#***#${Yellow}#***${Purple}#**${Cyan}*#***#***#${Blue}##***#${Yellow}*#*#***${Purple}##***#***${Blue}#**${Green}"
echo #############################################################
sleep 3
cd /home/dfyz/rollDice
echo #############################################################
pwd 
echo #############################################################
sleep 3
sudo docker build -t rolldice . && sudo docker run -d --restart always rolldice

echo #############################################################

echo rollDice Bot собран и запущен
echo -e "${Blue}***${Red}"##"${Green}#***${Yellow}#${Blue}*#${Yellow}#***#${Yellow}#***${Purple}#**${Cyan}*#***#***#${Blue}##***#${Yellow}*#*#***${Purple}##***#***${Blue}#**${Color_Off}"
echo #############################################################
cd /home/dfyz/
pwd
sleep 3

echo сборка контейнера uno
echo -e "${Blue}***${Red}"##"${Green}#***${Yellow}#${Blue}*#${Yellow}#***#${Yellow}#***${Purple}#**${Cyan}*#***#***#${Blue}##***#${Yellow}*#*#***${Purple}##***#***${Blue}#**${Green}"
echo #############################################################
sleep 3
cd /home/dfyz
echo #############################################################
pwd 
echo #############################################################
sleep 3
git clone https://github.com/dfyzicka/unobot.git && cd unobot/
sleep 1
sed -i 's/TOKEN=config.get("token")/TOKEN=config.get("6250390249:AAEYyDOvMpnedlscQ1r_uDH5Ct7cknEPEFw")/' /home/dfyz/unobot/config.py 
sleep 1
sudo docker build -t unobot . && sudo docker run -d --restart always unobot
echo #############################################################
echo UNO Bot собран и запущен 
echo -e "${Blue}***${Red}"##"${Green}#***${Yellow}#${Blue}*#${Yellow}#***#${Yellow}#***${Purple}#**${Cyan}*#***#***#${Blue}##***#${Yellow}*#*#***${Purple}##***#***${Blue}#**${Color_Off}"
echo #############################################################
cd /home/dfyz/
pwd




       sleep 0.3
    echo "#############################"
        sleep 0.3
    echo "############################"
        sleep 0.3
    echo "###########################"
        sleep 0.3
    echo "##########################"
        sleep 0.3
    echo "##########################"
        sleep 0.3
    echo "#########################"
        sleep 0.3
    echo "########################"
        sleep 0.3
    echo "#######################"
        sleep 0.3
    echo "######################"
        sleep 0.3
    echo "#####################"
        sleep 0.3
    echo "####################"
        sleep 0.3
    echo "###################"
        sleep 0.3
    echo "##################"
        sleep 0.3
    echo "#################"
        sleep 0.3
    echo "################"
        sleep 0.3
    echo "###############"
        sleep 0.3
    echo "##############"
        sleep 0.3
    echo "#############"
        sleep 0.3
    echo "############"
        sleep 0.3
    echo "###########"
        sleep 0.3
    echo "##########"
        sleep 0.3
    echo "#########"
        sleep 0.3
    echo "########"
        sleep 0.3
    echo "#######"
        sleep 0.3
    echo "######"
        sleep 0.3
    echo "#####"
        sleep 0.3
    echo "####"
        sleep 0.3
    echo "###"
        sleep 0.3
    echo "##"
        sleep 0.3
    echo "#"
        sleep 5
mc



