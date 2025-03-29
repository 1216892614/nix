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

  programs.i3 = {
    enable = true;
    settings = { hide_window_decorations = "titlebar-only"; };
    windowManager = {
      focusedBorderColor = "#ff0000"; # 设置窗口聚焦时的边框颜色
      unfocusedBorderColor = "#ffffff"; # 设置窗口未聚焦时的边框颜色
      activeColor = "#000000"; # 设置窗口背景色
    };
    config = ''
      # 设置壁纸
      exec --no-startup-id feh --bg-scale /home/nerd/.config/i3/assets/wallpaper.png
    '';
  };

  imports = [
    ./home-manager-cfgs/nushell.nix
  ];


  home.stateVersion = "23.11";
}
