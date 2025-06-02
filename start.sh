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
    echo придумай пароль для пользователя dfyz
    echo #############################################################
        sleep 1
adduser dfyz
usermod -aG sudo dfyz
    echo #############################################################
    echo придумай новый пароль для root 
    echo #############################################################
        sleep 1
passwd root 


    echo #############################################################

    echo #############################################################
        sleep 3
apt-get upgrade -y 
apt install zip unzip nala sudo nano python3-full golang-1.19  aptitude git exa fzf  neofetch speedtest-cli libpam-google-authenticator fonts-powerline bat neovim tldr ncdu bpytop mc curl davfs2  -y
        sleep 2
    echo #############################################################

    echo установка DUF
    echo #############################################################

wget https://github.com/muesli/duf/releases/download/v0.6.0/duf_0.6.0_linux_amd64.deb && dpkg -i duf_0.6.0_linux_amd64.deb


    echo #############################################################
    echo установка docker и docker-compose
    echo -e "${Blue}***${Red}"##"${Green}#***${Yellow}#${Blue}*#${Yellow}#***#${Yellow}#***${Purple}#**${Cyan}*#***#***#${Blue}##***#${Yellow}*#*#***${Purple}##***#***${Blue}#**${Purple}"
    echo #############################################################
        sleep 3
curl -fsSL https://get.docker.com -o get-docker.sh  && sh get-docker.sh sudo systemctl start docker  && sudo systemctl enable docker && sudo curl -L --fail https://raw.githubusercontent.com/linuxserver/docker-docker-compose/master/run.sh -o /usr/local/bin/docker-compose  &&  chmod +x /usr/local/bin/docker-compose
    echo #############################################################
    echo #############################################################
    echo настройка ssh
    echo #############################################################


sed -i 's/PermitRootLogin yes/#PermitRootLogin yes/' /etc/ssh/sshd_config
sed -i 's/Port 22/#Port 22/' /etc/ssh/sshd_config
sed -i '1i Port 2233' /etc/ssh/sshd_config 
sed -i '2i PermitRootLogin no' /etc/ssh/sshd_config 
sed -i '3i AllowUsers dfyz' /etc/ssh/sshd_config 
sed -i '4i PasswordAuthentication yes' /etc/ssh/sshd_config
systemctl restart sshd
        sleep 3
chmod +x *.sh 
    echo #############################################################
    echo установка wireguard
    echo #############################################################
        sleep 3

curl -Of https://raw.githubusercontent.com/DigneZzZ/dwg-ui/main/setup.sh  && chmod +x setup.sh && ./setup.sh
apt remove ufw -y

    echo #############################################################
    echo ufw удалён
    echo #############################################################
chmod +x *.sh 

cd ..
        sleep 3
cp -r debianstart/ /home/dfyz/
        sleep 3


    echo #############################################################

    echo #############################################################
    echo -e "${Blue}***${Red}"##"${Green}#***${Yellow}#${Blue}*#${Yellow}#***#${Yellow}#***${Purple}#**${Cyan}*#***#***#${Blue}##***#${Yellow}*#*#***${Purple}##***#***${Blue}#**${Purple}"

        sleep 1
    echo #############################################################
    echo -e "${Red}ПЕРЕЗАГРУЗКА" 
    echo -e "${Red}новый порт для подключения SSH - 2233"
    echo #############################################################
    echo -e "${Blue}***${Red}"##"${Green}#***${Yellow}#${Blue}*#${Yellow}#***#${Yellow}#***${Purple}#**${Cyan}*#***#***#${Blue}##***#${Yellow}*#*#***${Purple}##***#***${Blue}#**${Purple}"
    echo -e "${Blue}***${Red}"##"${Green}#***${Yellow}#${Blue}*#${Yellow}#***#${Yellow}#***${Purple}#**${Cyan}*#***#***#${Blue}##***#${Yellow}*#*#***${Purple}##***#***${Blue}#**${Purple}"
    echo -e "${Blue}***${Red}"##"${Green}#***${Yellow}#${Blue}*#${Yellow}#***#${Yellow}#***${Purple}#**${Cyan}*#***#***#${Blue}##***#${Yellow}*#*#***${Purple}##***#***${Blue}#**${Purple}"
    echo hostnamectl
hostnamectl
    echo -e "${Blue}***${Red}"##"${Green}#***${Yellow}#${Blue}*#${Yellow}#***#${Yellow}#***${Purple}#**${Cyan}*#***#***#${Blue}##***#${Yellow}*#*#***${Purple}##***#***${Blue}#**${Purple}"

        sleep 2
hostnamectl set-hostname "beerver" && hostnamectl
sed -i 's/127.0.1.1/#127.0.1.1/' /etc/hosts 
#sed '11i 127.0.0.1 beerver' /etc/hosts
#sed '12i 127.0.1.1 beerver' /etc/hosts
echo "127.0.0.1 beerver" >> /etc/hosts
echo "127.0.1.1 beerver" >> /etc/hosts
    echo -e "${Blue}***${Red}"##"${Green}#***${Yellow}#${Blue}*#${Yellow}#***#${Yellow}#***${Purple}#**${Cyan}*#***#***#${Blue}##***#${Yellow}*#*#***${Purple}##***#***${Blue}#**${Purple}"
    echo hostname
hostname
    echo -e "${Blue}***${Red}"##"${Green}#***${Yellow}#${Blue}*#${Yellow}#***#${Yellow}#***${Purple}#**${Cyan}*#***#***#${Blue}##***#${Yellow}*#*#***${Purple}##***#***${Blue}#**${Purple}"

sleep 2
    echo -e "${Blue}***${Red}"##"${Green}#***${Yellow}#${Blue}*#${Yellow}#***#${Yellow}#***${Purple}#**${Cyan}*#***#***#${Blue}##***#${Yellow}*#*#***${Purple}##***#***${Blue}#**${Purple}"

    echo cat /etc/hosts
cat /etc/hosts
    echo -e "${Blue}***${Red}"##"${Green}#***${Yellow}#${Blue}*#${Yellow}#***#${Yellow}#***${Purple}#**${Cyan}*#***#***#${Blue}##***#${Yellow}*#*#***${Purple}##***#***${Blue}#**${Purple}"
        sleep 5
reboot
