{ pkgs, ... }:

{
  services.xserver = {
    enable = true;
    xkb = {
      variant = "intl";
      layout = "us";
    };
    libinput.enable = true;
    #xserver.videoDrivers = [ "nvidia" ];

    windowManager.i3 = {
      enable = true;
      package = pkgs.i3-gaps;
    };
  };
}
