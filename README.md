# Config de base du système

### Download and extract from github repo
`wget https://github.com/samothrell/nixos/archive/main.tar.gz`\
`tar -xzvf main.tar.gz'`\
`rm main.tar.gz`\
`mv nixos-main/ nixos`

### Installation et configuration de home-manager
`sudo nix-channel --add https://github.com/nix-community/home-manager/archive/release-25.05.tar.gz home-manager`\
`sudo nix-channel --update`
