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
" '';
  };
}
