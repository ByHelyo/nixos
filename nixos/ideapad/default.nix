let
  user = "helyo";
in

{

  imports = [
    ./hardware-configuration.nix
    ../configuration.nix
    ../hardware.nix
    ../displayserver.nix
  ];

  virtualisation = import ../virtualisation.nix;
  users.users.${user} = import ../${user}.nix;
}
