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
  ];

  virtualisation = import ../common/virtualisation.nix;
  users.users.${user} = import ../common/users/${user}.nix;

  networking.hostName = "ideapad";
}
