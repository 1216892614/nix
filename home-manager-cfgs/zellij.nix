{ pkgs, ... }:

{
  programs.zellij = {
    enable = true;
    settings.show_startup_tips = false;
    on_exit = "kill-window";
  };
}
