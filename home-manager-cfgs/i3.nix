{ pkgs, ... }:

{
  home.file.".config/i3/assets/wallpaper.png".source = ../assets/wallpaper.png;
  home.file.".config/i3/config".source = ./i3-config;
  home.file.".config/alacritty/alacritty.yml".source = ./i3-alacritty.yml;
}
