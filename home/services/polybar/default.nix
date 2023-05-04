{ pkgs, ... }:

let
  color = {
    background = "#282A2E";
    background-alt = "#373B41";
    foreground = "#C5C8C6";
    primary = "#FF5F1F";
    secondary = "#8ABEB7";
    alert = "#A54242";
    disabled = "#707880";
  };

  config = {
    backlight = {
      card = "amdgpu_bl0";
    };
    battery = {
      battery_name = "BAT1";
      battery_adapter = "ADP1";
    };
    network = {
      wireless = "wlo1";
    };
  };
in

{
  enable = true;

  package = pkgs.polybar.override {
    i3GapsSupport = true;
    pulseSupport = true;
  };

  script = "polybar -q -r main &";

  config = {
    "bar/main" = {

      width = "100%";
      height = "24pt";

      background = color.background;
      foreground = color.foreground;


      line-size = "3pt";

      padding-left = 0;
      padding-right = 1;

      module-margin = 1;

      separator = "|";
      separator-foreground = color.disabled;

      font-0 = "JetBrainsMono Nerd Font Mono:pixelsize=13;2";

      modules-left = "xworkspaces xwindow";
      modules-right = "xkeyboard pulseaudio backlight memory cpu network battery date";

      enable-ipc = true;
    };

    "settings" = {
      screenchange-reload = true;
    };

    "module/xworkspaces" = import ./modules/xworkspaces.nix { inherit color; };
    "module/xwindow" = import ./modules/xwindow.nix { inherit color; };
    "module/xkeyboard" = import ./modules/xkeyboard.nix { inherit color; };
    "module/network" = import ./modules/network.nix { inherit color config; };
    "module/pulseaudio" = import ./modules/pulseaudio.nix { inherit color; };
    "module/battery" = import ./modules/battery.nix { inherit config; };
    "module/date" = import ./modules/date.nix { inherit color; };
    "module/cpu" = import ./modules/cpu.nix { inherit color; };
    "module/memory" = import ./modules/memory.nix { inherit color; };
    "module/backlight" = import ./modules/backlight.nix { inherit color config; };
  };
}
