{ pkgs, settings }:

let
  color = {
    background-alt = "#373B41";
    primary = "#FF5F1F";
    secondary = "#8ABEB7";
    alert = "#A54242";
    disabled = "#707880";

    background = "#141C21";
    foreground = "#F5F5F5";
    foreground-alt = "#FFFFFF";
    alpha = "#222";

    shades = {
      "1" = "#050b15";
      "2" = "#0f203e";
      "3" = "#98b5e6";
      "4" = "#193567";
      "5" = "#234a90";
      "6" = "#2d60b9";
      "7" = "#4679d2";
      "8" = "#2F64C1";
    };
  };
in

{
  enable = true;

  package = pkgs.polybar.override {
    i3Support = true;
    pulseSupport = true;
  };

  script = "polybar -q -r main &";

  config = {
    "global/wm" = {
      margin-bottom = 0;
      margin-top = 0;
    };

    "bar/main" = {
      override-redirect = false;
      fixed-center = true;

      width = "100%";
      height = 30;

      offset-x = "0%";
      offset-y = "1%";

      background = color.alpha;
      foreground = color.foreground;

      radius-top = 0;
      radius-bottom = 0;

      underline-size = 4;

      border-size = 0;
      border-color = color.background;

      padding = 0;

      module-margin = 0;

      font-0 = "Iosevka Nerd Font:pixelsize=10;3";
      font-1 = "Iosevka Nerd Font:style=Medium:size=13;3.9";

      modules-left = "i3";
      modules-right = "xkeyboard pulseaudio backlight memory cpu network battery date tray";

      separator = "";
      dim-value = "1.0";

      enable-ipc = true;
    };

    "settings" = {
      screenchange-reload = true;

      compositing-background = "source";
      compositing-foreground = "over";
      compositing-overline = "over";
      compositing-underline = "over";
      compositing-border = "over";

      pseudo-transparency = "false";
    };

    "module/battery" = import ./modules/battery.nix { inherit settings color; };
    "module/cpu" = import ./modules/cpu.nix { inherit color; };
    "module/date" = import ./modules/date.nix { inherit color; };
    "module/pulseaudio" = import ./modules/pulseaudio.nix { inherit color; };
    "module/xkeyboard" = import ./modules/xkeyboard.nix { inherit color; };
    "module/i3" = import ./modules/i3.nix { inherit color; };
    "module/network" = import ./modules/network.nix { inherit color settings; };
    "module/backlight" = import ./modules/backlight.nix { inherit color settings; };
    "module/memory" = import ./modules/memory.nix { inherit color; };
    "module/tray" = import ./modules/tray.nix { inherit color; };
  };
}
