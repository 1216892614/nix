{ pkgs, ... }:

{
  programs.i3 = {
    enable = true;
    settings = { hide_window_decorations = "titlebar-only"; };
    config = ''
      # 设置壁纸
      exec --no-startup-id feh --bg-scale ~/.config/i3/assets/wallpaper.png

      # 将 Super 键映射为 Windows 键
      set $mod Mod4  # Mod4 对应 Windows 键

      set $rosewater #f5e0dc
      set $flamingo #f2cdcd
      set $pink #f5c2e7
      set $mauve #cba6f7
      set $red #f38ba8
      set $maroon #eba0ac
      set $peach #fab387
      set $yellow #f9e2af
      set $green #a6e3a1
      set $teal #94e2d5
      set $sky #89dceb
      set $sapphire #74c7ec
      set $blue #89b4fa
      set $lavender #b4befe
      set $text #cdd6f4
      set $subtext1 #bac2de
      set $subtext0 #a6adc8
      set $overlay2 #9399b2
      set $overlay1 #7f849c
      set $overlay0 #6c7086
      set $surface2 #585b70
      set $surface1 #45475a
      set $surface0 #313244
      set $base #1e1e2e
      set $mantle #181825
      set $crust #11111b
    '';
  };
}
