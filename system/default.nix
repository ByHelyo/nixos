{ ... }:

{
  imports = [
    ./user
    ./device
  ];

  virtualisation = import ./virtualisation.nix;
}
