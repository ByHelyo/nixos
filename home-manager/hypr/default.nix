{ ... }:

{
  home.sessionVariables = {
    NIXOS_OZONE_WL = "1";
  };

  wayland.windowManager.hyprland = {
    enable = true;

    settings = {
      "$mod" = "SUPER";
      bind = [
        "$mod, Return, exec, alacritty"
        "$mod, D, exec, rofi -modi drun -show drun"
        ",PRINT, exec, flameshot"
      ];
    };
  };

  programs.waybar = {
    enable = true;
  };
}
