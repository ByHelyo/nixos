let
  user = "helyo";
in

{

  imports = [
    ./hardware-configuration.nix
    ../common/configuration.nix
    ../common/location.nix
    ../common/hardware.nix
    ../common/displayserver.nix
    ../common/virtualisation.nix

    ../common/users/helyo.nix
  ];

  networking.hostName = "ideapad";
}
