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

  imports = [
    ./modules/kitty.nix
  ];

  home.stateVersion = "23.11";
}
