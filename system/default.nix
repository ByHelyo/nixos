{ ... }:

{
  imports = [
    ./user
    ./displayserver
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

  services.printing.enable = true;

  programs.light.enable = true;
  console.keyMap = "us-acentos";

  virtualisation = import ./virtualisation.nix;
}
