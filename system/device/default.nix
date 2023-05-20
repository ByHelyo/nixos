{ pkgs, ... }:

{
  imports = [
    ./desktop.nix
    ./laptop.nix
  ];

  # BootLoader
  boot.loader = {
    systemd-boot = {
      enable = true;
      configurationLimit = 10;
    };
    efi = {
      canTouchEfiVariables = true;
      efiSysMountPoint = "/boot/efi";
    };
  };

  networking = {
    hostName = "nixos";
    networkmanager.enable = true;
  };

  # Sound
  sound.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };

  services = {

    printing.enable = true; # Printer

    xserver = {
      enable = true;

      # X11 keymap
      layout = "us";
      xkbVariant = "intl";

      windowManager.i3 = {
        enable = true;
        package = pkgs.i3-gaps;
      };
    };
  };

  programs.light.enable = true; # Brightness

  console.keyMap = "us-acentos"; # Console keymap
}
