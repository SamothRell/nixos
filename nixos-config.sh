#!/usr/bin/env bash
wget https://github.com/samothrell/nixos/archive/main.tar.gz
tar -xzvf main.tar.gz
rm main.tar.gz
mv nixos-main/ nixos
sudo nix-channel --add https://github.com/nix-community/home-manager/archive/release-25.05.tar.gz home-manager
sudo nix-channel --update

cat >> /etc/nixos/configuration.nix << EOL
home-manager = {
    useGlobalPkgs = true;
    useUserPackages = true;
    users.thomas = import ./home.nix;
  };
EOL
sudo cp /etc/nixos/*.nix ~/nixos
sudo chown -R 1000:100 ~/nixos
sudo rm -r /etc/nixos
sudo ln -s ~/nixos /etc/nixos
