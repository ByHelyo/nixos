{ inputs, ... }:

{
  imports = [
    inputs.home-manager.nixosModules.home-manager
    ./hardware-configuration.nix
    ../common/configuration.nix
    ../common/location.nix
    ../common/hardware.nix
    ../common/xserver
    ../common/xserver/i3
  ];

  home-manager = {
    extraSpecialArgs = { inherit inputs; };
    users = {
      helyo = import ../../home-manager/homes/ideapad.nix;
    };
  };

  virtualisation = import ../common/virtualisation.nix;
  users.users.helyo = import ../common/users/helyo.nix;

  networking.hostName = "ideapad";
}
