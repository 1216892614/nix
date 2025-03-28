{ config, pkgs, ... }:

{
  home.username = "myuser";
  home.homeDirectory = "/home/myuser";

  programs.home-manager.enable = true;

  programs.nushell = {
    enable = true;
    configFile.text = "source ~/.config/nushell/config.nu";
  };

  programs.starship = {
    enable = true;
    settings = { add_newline = false; };
  };

  programs.yazi.enable = true;
  programs.helix.enable = true;

  programs.kitty = {
    enable = true;
    theme = "Catppuccin-Mocha";
    font.name = "Sarasa Gothic Nerd Font";
    font.size = 12;
    settings = { hide_window_decorations = "titlebar-only"; };
  };

  home.stateVersion = "23.11";
}
