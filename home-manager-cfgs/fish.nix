{ pkgs, ... }:

{
  home.file.".config/fish/config.fish".source = ./config.fish;
}
