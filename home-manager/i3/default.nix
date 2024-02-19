{ pkgs, lib, ... }:

let
  mod = "Mod4";
  wallpaper = ./wallpaper.png;
in

{
  xsession = {
    enable = true;
    windowManager.i3 = {
      enable = true;
      package = pkgs.i3-gaps;

      config = {
        modifier = mod;
        bars = [ ];
        window = {
          titlebar = false;
          border = 0;
        };
        gaps = {
          inner = 10;
          outer = 10;
        };

        keybindings = lib.mkOptionDefault {
          "${mod}+Return" = "exec ${pkgs.alacritty}/bin/alacritty";
          "${mod}+d" = "exec ${pkgs.rofi}/bin/rofi -modi drun -show drun";

          "XF86AudioRaiseVolume" = "exec --no-startup-id ${pkgs.pulseaudio}/bin/pactl set-sink-mute @DEFAULT_SINK@ false, exec --no-startup-id ${pkgs.pulseaudio}/bin/pactl set-sink-volume @DEFAULT_SINK@ +5%";
          "XF86AudioLowerVolume" = "exec --no-startup-id ${pkgs.pulseaudio}/bin/pactl set-sink-mute @DEFAULT_SINK@ false, exec --no-startup-id ${pkgs.pulseaudio}/bin/pactl set-sink-volume @DEFAULT_SINK@ -5%";
          "XF86AudioMute" = "exec --no-startup-id ${pkgs.pulseaudio}/bin/pactl set-sink-mute @DEFAULT_SINK@ toggle";

          "XF86MonBrightnessUp" = "exec --no-startup-id ${pkgs.brightnessctl}/bin/brightnessctl -q s 5%+";
          "XF86MonBrightnessDown" = "exec --no-startup-id ${pkgs.brightnessctl}/bin/brightnessctl -q s 5%-";

          "${mod}+p" = "exec ${pkgs.flameshot}/bin/flameshot gui";
        };

        startup = [
          {
            command = "${pkgs.feh}/bin/feh --bg-scale ${wallpaper}";
            always = true;
            notification = false;
          }
          {
            command = "${pkgs.discord}/bin/Discord";
          }
        ];
      };
    };
  };
}
