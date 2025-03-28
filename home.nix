{ config, pkgs, ... }:

{
  home.username = "myuser";
  home.homeDirectory = "/home/myuser";

  home.file.".config/ibus/rime" = {
    source = ./rime;
    target = ".config/ibus/rime";
  };

  programs.home-manager.enable = true;

  programs.starship = {
    enable = true;
    settings = { add_newline = false; };
  };

  programs.yazi.enable = true;
  programs.helix.enable = true;

  imports = [
    ./modules/kitty.nix
    ./modules/nushell.nix
  ];

  home.stateVersion = "23.11";
}
