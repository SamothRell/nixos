# Config de base du système

### Download and extract from github repo
`wget https://github.com/samothrell/nixos/archive/main.tar.gz\
tar -xzvf main.tar.gz\
rm main.tar.gz\
mv nixos-main/ nixos`

### Installation de home-manager
`sudo nix-channel --add https://github.com/nix-community/home-manager/archive/release-25.05.tar.gz home-manager\
sudo nix-channel --update`

### Suppression du répertoire /etc/nixos et création du lien symbolique
`sudo cp /etc/nixos/hardware-configuration.nix ~/nixos\
sudo chown -R 1000:100 ~/nixos\
sudo rm -r /etc/nixos\
sudo ln -s ~/nixos /etc/nixos`
