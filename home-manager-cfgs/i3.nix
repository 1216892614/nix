{ pkgs, ... }:

{
  home.file.".config/i3/assets/wallpaper.png".source = ../assets/wallpaper.png;
  windowManager.i3.configFile = ./i3-config;
}
