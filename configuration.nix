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

  i18n.defaultLocale = "zh_CN.UTF-8";
  i18n.inputMethod = {
    enabled = true;
    type = "ibus";
    ibus.engines = with pkgs.ibus-engines; [
      libpinyin
      rime
    ];
  };

  fonts = {
    packages = with pkgs; [
      noto-fonts
      noto-fonts-cjk-sans
      noto-fonts-cjk-serif
      sarasa-gothic
      source-code-pro
      hack-font
      jetbrains-mono
      nerdfonts
    ];

    fontconfig = {
      defaultFonts = {
        emoji = [ "Noto Color Emoji" ];
        monospace = [
          "Sarasa Mono SC"
          "Noto Sans Mono CJK SC"
          "DejaVu Sans Mono"
        ];
        sansSerif = [
          "Noto Sans CJK SC"
          "Source Han Sans SC"
          "DejaVu Sans"
        ];
        serif = [
          "Noto Serif CJK SC"
          "Source Han Serif SC"
          "DejaVu Serif"
        ];
      };
    };
  };

  users.users.myuser = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
  };

  system.stateVersion = "23.11";
}
