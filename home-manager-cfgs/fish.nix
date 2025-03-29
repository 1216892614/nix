{ pkgs, ... }:

{
  programs.fish.enable = true;
  home.file.".config/fish/config.fish".source = ./config.fish;
}
