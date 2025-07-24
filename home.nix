{ config, pkgs, ... }:

{
  home.username = "samothrell";
  home.homeDirectory = "/home/samothrell";
  home.stateVersion = "25.05";

  dconf = {
    enable = true;
    settings = {
      "org/gnome/shell" = {
        disable-user-extensions = false; # enables user extensions
        # Epingler les applications au dock
        favorite-apps = ["org.gnome.Nautilus.desktop" "microsoft-edge.desktop" "org.gnome.Console.desktop" "code.desktop" "google-chrome.desktop" "org.gnome.SystemMonitor.desktop"];
        enabled-extensions = [
          # Put UUIDs of extensions that you want to enable here.
          # If the extension you want to enable is packaged in nixpkgs,
          # you can easily get its UUID by accessing its extensionUuid
          # field (look at the following example).
          pkgs.gnomeExtensions.dash-to-dock.extensionUuid
          pkgs.gnomeExtensions.appindicator.extensionUuid
          # Alternatively, you can manually pass UUID as a string.
          #"blur-my-shell@aunetx"
          # ...
        ];
      };

      # Configure individual extensions
      "org/gnome/desktop/interface".color-scheme = "prefer-dark";
      "org/gnome/desktop/interface".show-battery-percentage = true;
      "org/gnome/desktop/wm/preferences".button-layout = ":minimize,maximize,close";
      "org/gnome/shell".last-selected-power-profile = "performance";
      "org/gnome/settings-daemon/plugins/power".idle-dim = false;
      #"org/gnome/desktop/session".idle-delay = "0";
      "org/gnome/settings-daemon/plugins/power".sleep-inactive-ac-type = "nothing";
      "org/gnome/shell/extensions/dash-to-dock" = {
        disable-overview-on-startup = true;
        apply-custom-theme = true;
      };
    };
  };

  programs.git = {
    enable = true;
    userName  = "SamothRell";
    userEmail = "t.muller57@gmail.com";
  };

}
