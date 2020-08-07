#! /bin/zsh

PACKAGES=(
  "base"
  "base-devel"
  "pacman-contrib"
  "nfs-utils"
  "linux"
  "linux-lts"
  "linux-firmware"
  "intel-ucode"
  "vim"
  "reflector"
  "sudo"
  "zsh"
  "zsh-completions"
  "tmux"
  "git"
  "rsync"
  #### ssh ####
  "openssh"
  "sshfs"
  #"sshpass"
  #### monitor ####
  "htop"
  "iotop"
  "bmon"
  #### utils ####
  "fzf"
  "diff-so-fancy"
  "zsh-syntax-highlighting"
  "exa"      # ls   replacement
  "ripgrep"  # grep replacement
  "the_silver_searcher"
  "fd"       # find replacement
  "bat"      # cat with wings
  "jq"       # json command line parser
  "hq"       # html command line parser
  "thefuck"
  "tree"
  "chezmoi"  # manage dotfiles

  "rust"
  "go" "go-tools"

)
docker stop subspace && docker rm subspace && rm /root/subspace/data/config.json && docker run -d \
    --name subspace \
    --restart always \
    --cap-add NET_ADMIN \
    --sysctl net.ipv6.conf.all.disable_ipv6=0 \
    --cap-add=SYS_ADMIN --security-opt seccomp=unconfined \
    --volume /usr/bin/wg:/usr/bin/wg \
    --volume /root/subspace/data:/data \
    --env SUBSPACE_HTTP_HOST=vpn.4act.com \
    --env SUBSPACE_HTTP_INSECURE=true \
    --env SUBSPACE_LETSENCRYPT=false \
    --env "SUBSPACE_HTTP_ADDR=:4443" \
    -P
    simwood/subspace:latest && docker logs -f subspace

--cap-add=SYS_ADMIN --security-opt seccomp=unconfined
