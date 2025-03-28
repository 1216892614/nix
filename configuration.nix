{ config, pkgs, ... }:

{
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  services.xserver.enable = true;
  services.xserver.windowManager.i3.enable = true;
  services.xserver.displayManager.lightdm.enable = true;

  i18n.inputMethod.enabled = "fcitx5";
  i18n.inputMethod.fcitx5.addons = [ pkgs.fcitx5-rime ];
  environment.variables = { GTK_IM_MODULE = "fcitx"; QT_IM_MODULE = "fcitx"; XMODIFIERS = "@im=fcitx"; };

  environment.systemPackages = with pkgs; [
    nushell starship yazi helix kitty
    fontconfig nerdfonts sarasa-gothic
  ];

  fonts.packages = with pkgs; [ nerdfonts sarasa-gothic ];

  users.users.myuser = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
  };

  system.stateVersion = "23.11";
}
