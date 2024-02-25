{ inputs, ... }:

{
  imports = [
    inputs.home-manager.nixosModules.home-manager
    ./hardware-configuration.nix
    ../common/configuration.nix
    ../common/location.nix
    ../common/hardware.nix
    ../common/xserver.nix
    ../common/nvidia.nix
  ];

  home-manager = {
    extraSpecialArgs = { inherit inputs; };
    users = {
      helyo = import ../../home-manager/homes/desktop.nix;
    };
  };

  virtualisation = import ../common/virtualisation.nix;
  users.users.helyo = import ../common/users/helyo.nix;

  boot.loader.efi.efiSysMountPoint = "/boot/efi";

  networking.hostName = "desktop";
}
