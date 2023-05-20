{ ... }:

{
  imports = [
    ./user
    ./device
    ./general.nix
  ];

  virtualisation = import ./virtualisation.nix;
}
