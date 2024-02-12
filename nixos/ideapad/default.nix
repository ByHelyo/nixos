let
  user = "helyo";
in

{

  imports = [
    ./hardware-configuration.nix
    ../configuration.nix
    ../location.nix
    ../hardware.nix
    ../displayserver.nix
  ];

  virtualisation = import ../virtualisation.nix;
  users.users.${user} = import ../${user}.nix;

  networking.hostName = "ideapad";
}
