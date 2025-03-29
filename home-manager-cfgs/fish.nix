{ pkgs, ... }:

{
  programs.fish = {
    enable = true;
    interactiveShellInit = ''
if status is-interactive
  eval (zellij setup --generate-auto-start fish | string collect)
end

set -x EDITOR hx
set -x GTK_IM_MODULE "fcitx"
set -x QT_IM_MODULE "fcitx"
set -x XMODIFIERS "@im=fcitx"

set -g fish_greeting "
 /\_/\\
( o.o )
 > ^ <
    " 
    '';
    plugins = [
      {
        name = "fisher"; src = pkgs.fetchFromGitHub {
          owner = "jorgebucaran";
          repo = "fisher";
          rev = "1f0dc2b4970da160605638cb0f157079660d6e04";
        };
      }
    ];
  };
}
