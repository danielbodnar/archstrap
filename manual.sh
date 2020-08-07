pacman -Sy base base-devel pacman-contrib nfs-utils linux linux-lts linux-firmware intel-ucode vim reflector sudo zsh zsh-completions tmux git rsync openssh sshfs htop iotop bmon fzf diff-so-fancy zsh-syntax-highlighting exa ripgrep the_silver_searcher fd bat jq hq thefuck tree chezmoi rust go go-tools wget curl wireguard-tools wireguard-arch

echo "bodnar ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers


sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

sed -i 's/robbyrussell/rkj-repos/g' ~/.zshrc && source ~/.zshrc

source ~/.zshrc

ssh-keygen -t ed25519

echo "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIEgphML/JLKOtV9ArClcxnLmnlqyENYBcRkwtla8Ymez daniel.bodnar@4act.com:id_ed25519" >> ~/.ssh/authorized_keys

sed -i 's/\#Port 22/Port 2232/g' /etc/ssh/sshd_config
