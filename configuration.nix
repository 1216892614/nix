{ config, pkgs, ... }:

{
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  services.xserver.enable = true;
  services.xserver.windowManager.i3.enable = true;
  services.xserver.displayManager.lightdm.enable = true;

  environment.variables = { GTK_IM_MODULE = "fcitx"; QT_IM_MODULE = "fcitx"; XMODIFIERS = "@im=fcitx"; };

  environment.systemPackages = with pkgs; [
    nushell starship yazi helix kitty
    fontconfig nerdfonts sarasa-gothic
    ibus rime git
  ];

  i18n.inputMethod = {
    enabled = true;
    type = "ibus";
    ibus.engines = with pkgs.ibus-engines; [
      libpinyin
      rime
    ];
  };

  fonts.packages = with pkgs; [ nerdfonts sarasa-gothic ];

  users.users.myuser = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
  };

  system.stateVersion = "23.11";
}
