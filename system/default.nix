{ ... }:

{
  imports = [
    ./user
    ./general.nix
    ./desktop.nix
  ];

  virtualisation = import ./virtualisation.nix;
}
