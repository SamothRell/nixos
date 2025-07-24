{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    gnomeExtensions.dash-to-dock
    gnomeExtensions.appindicator
    gnome-tweaks
    gnome-extension-manager
    btop
    libreoffice-fresh
    fastfetch
    microsoft-edge
    synology-drive-client
    nodejs
    vscode
    google-chrome
    vlc
    discord
    docker
    docker-compose
  ];

  environment.gnome.excludePackages = with pkgs; [
    gnome-tour
    geary
    epiphany
    totem
    decibels
    yelp
  ];

  users.users.thomas.shell = pkgs.zsh;
  programs.zsh.enable = true;
  programs.zsh.ohMyZsh.enable = true;
  programs.zsh.ohMyZsh.plugins = [
    "git"         # also requires `programs.git.enable = true;
  ];
  programs.zsh.ohMyZsh.theme = "robbyrussell";
  # Prevent the new user dialog in zsh
  #system.userActivationScripts.zshrc = "touch .zshrc";
  # Enable git
  #programs.git.enable = true;
  
}
