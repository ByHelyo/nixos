{ inputs, ... }:

{
  imports = [
    inputs.home-manager.nixosModules.home-manager
    ./hardware-configuration.nix
    ../module/configuration.nix
    ../module/location.nix
    ../module/core.nix
    ../module/xserver
    ../module/xserver/kde
    ../module/hardware/nvidia.nix
    ../module/hardware/razer.nix
  ];

  home-manager = {
    extraSpecialArgs = { inherit inputs; };
    users = {
      helyo = import ../../home-manager/homes/desktop.nix;
    };
  };

  virtualisation = import ../module/virtualisation.nix;
  users.users.helyo = import ../module/users/helyo.nix;

  networking.hostName = "desktop";
}
