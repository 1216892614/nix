{ pkgs, ... }:

{
  programs.kitty = {
    enable = true;
    themeFile = pkgs.catppuccin.themes.mocha
    font.name = "Sarasa Gothic Nerd Font";
    font.size = 12;
    settings = { hide_window_decorations = "titlebar-only"; };
  };
}
