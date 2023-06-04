{ pkgs, ... }:

{
  imports = [
    #./desktop.nix
    ./laptop.nix
  ];

  boot.loader = {
    systemd-boot = {
      enable = true;
      configurationLimit = 10;
    };

    efi.canTouchEfiVariables = true;
  };

  networking = {
    hostName = "nixos";
    networkmanager.enable = true;
  };

  sound.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa = {
      enable = true;
      support32Bit = true;
    };
    pulse.enable = true;
  };

  services = {
    printing.enable = true;

    xserver = {
      enable = true;
      layout = "us";
      xkbVariant = "intl";

      windowManager.i3 = {
        enable = true;
        package = pkgs.i3-gaps;
      };
    };
  };

  programs.light.enable = true;
  console.keyMap = "us-acentos";
}
