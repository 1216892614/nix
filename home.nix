{ config, pkgs, ... }:

{
  home.username = "nerd";
  home.homeDirectory = "/home/nerd";

  imports = [
    ./home-manager-cfgs/i3.nix
    ./home-manager-cfgs/fish.nix
  ];

  home.file.".config/ibus/rime" = {
    source = ./rime;
    target = ".config/ibus/rime";
  };

  catppuccin.flavor = "mocha";
  catppuccin.enable = true;

  catppuccin.zellij.enable = true;
  catppuccin.fzf.enable = true;
  catppuccin.yazi.enable = true;
  catppuccin.helix.enable = true;
  catppuccin.kitty.enable = true;
  catppuccin.fish.enable = true;

  programs.home-manager.enable = true;

  programs.zellij = {
    enable = true;
  };

  programs.fzf = {
    enable = true;
  };

  programs.yazi = {
    enable = true;
  };

  programs.helix = {
    enable = true;
  };

  programs.kitty = {
    enable = true;
    settings = { hide_window_decorations = "titlebar-only"; };
  };

  home.stateVersion = "23.11";
}
