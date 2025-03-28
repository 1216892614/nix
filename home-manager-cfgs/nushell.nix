{ pkgs, ... }:

{
  programs.nushell = {
    enable = true;
    configFile.text = ''
      source ~/.config/nushell/config.nu

      def start_zellij [] {
        if 'ZELLIJ' not-in ($env | columns) {
          if 'ZELLIJ_AUTO_ATTACH' in ($env | columns) and $env.ZELLIJ_AUTO_ATTACH == 'true' {
            zellij attach -c
          } else {
            zellij
          }

          if 'ZELLIJ_AUTO_EXIT' in ($env | columns) and $env.ZELLIJ_AUTO_EXIT == 'true' {
            exit
          }
        }
      }

      start_zellij
    '';
  };
}
