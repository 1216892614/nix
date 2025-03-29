{ config, pkgs, ... }:

{
  home.username = "nerd";
  home.homeDirectory = "/home/nerd";

  home.file.".config/i3/config".source = ./i3/config;
  home.file.".config/i3/assets/wallpaper.png".source = ./assets/wallpaper.png;

  home.file.".config/ibus/rime" = {
    source = ./rime;
    target = ".config/ibus/rime";
  };

  catppuccin.flavor = "mocha";
  catppuccin.enable = true;

  catppuccin.zellij.enable = true;
  catppuccin.fzf.enable = true;
  catppuccin.starship.enable = true;
  catppuccin.yazi.enable = true;
  catppuccin.helix.enable = true;
  catppuccin.kitty.enable = true;

  programs.home-manager.enable = true;

  programs.zellij = {
    enable = true;
  };

  programs.fzf = {
    enable = true;
  };

  programs.starship = {
    enable = true;
    settings = { add_newline = false; };
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

  imports = [
    ./home-manager-cfgs/nushell.nix
    ./home-manager-cfgs/i3.nix
  ];


  home.stateVersion = "23.11";
}
