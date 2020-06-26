#!/usr/bin/env bash

useradd -m -s /bin/zsh bodnar
usermod -aG wheel bodnar

pacman -S `https://raw.githubusercontent.com/DanielBodnar/archstrap/master/packages.list`
