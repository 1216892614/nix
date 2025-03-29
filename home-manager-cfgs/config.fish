if status is-interactive
  eval (zellij setup --generate-auto-start fish | string collect)
end

set -x EDITOR hx

set -g fish_greeting "
 /\_/\\
( o.o )
 > ^ <
" 
