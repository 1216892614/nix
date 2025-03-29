{ config, pkgs, ... }:

{
  home.username = "nerd";
  home.homeDirectory = "/home/nerd";

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

    programs.kitty = {
    enable = true;
    settings = { hide_window_decorations = "titlebar-only"; };
  };

  imports = [
    ./home-manager-cfgs/nushell.nix
  ];

  home.stateVersion = "23.11";
}
