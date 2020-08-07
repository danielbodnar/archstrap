#!/usr/bin/env bash
cd ~/

[[ ! -f "`which git`" ]] && pacman -Sy  --noconfirm git;
[[ -d "archstrap" ]] && rm -rf archstrap;

umount -R /mnt

git clone https://github.com/DanielBodnar/archstrap.git
cd archstrap
chmod +x bootstrap.sh
./bootstrap.sh


#useradd -m -s /bin/zsh bodnar
#usermod -aG wheel bodnar

#pacman -S `https://raw.githubusercontent.com/DanielBodnar/archstrap/master/packages.list`
