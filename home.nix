{ config, pkgs, ... }:

{
  home.username = "nerd";
  home.homeDirectory = "/home/nerd";

  home.file.".config/ibus/rime" = {
    source = ./rime;
    target = ".config/ibus/rime";
  };

  catppuccin.flavor = "mocha";
  catppuccin.enable = true;

  programs.home-manager.enable = true;

  programs.zellij = {
    enable = true;
    catppuccin.enable = true;
  };

  programs.fzf = {
    enable = true;
    catppuccin.enable = true;
  };

  programs.starship = {
    enable = true;
    catppuccin.enable = true;
    settings = { add_newline = false; };
  };

  programs.yazi = {
    enable = true;
    catppuccin.enable = true;
  };

  programs.helix = {
    enable = true;
    catppuccin.enable = true;
  };

  programs.kitty = {
    enable = true;
    catppuccin.enable = true;
    settings = { hide_window_decorations = "titlebar-only"; };
  };

  imports = [
    ./home-manager-cfgs/nushell.nix
  ];


  home.stateVersion = "23.11";
}
