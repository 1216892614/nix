{ pkgs, ... }:

{
  programs.kitty = {
    enable = true;
    theme = "Catppuccin-Mocha";
    font.name = "Sarasa Gothic Nerd Font";
    font.size = 12;
    settings = { hide_window_decorations = "titlebar-only"; };
  };
}
