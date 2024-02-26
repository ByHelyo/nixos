{ ... }:

{
  services.xserver = {
    enable = true;
    xkb = {
      variant = "intl";
      layout = "us";
    };
    libinput.enable = true;
  };
}
