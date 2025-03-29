{ pkgs, ... }:

{
  home.file.".config/fish/config.fish".source = ./config.fish;
  programs.fish.enable = true;
}
