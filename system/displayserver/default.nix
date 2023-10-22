{ pkgs, ... }:

{
  services.xserver = {
    enable = true;
    layout = "us";
    xkbVariant = "intl";
    libinput.enable = true;
    #xserver.videoDrivers = [ "nvidia" ];

    windowManager.i3 = {
      enable = true;
      package = pkgs.i3-gaps;
    };
  };
}
