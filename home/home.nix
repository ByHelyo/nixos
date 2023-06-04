{ pkgs, lib, ... }:

{
  imports = [
    ./pkgs
    ./services
    ./programs
  ];

  nixpkgs.config.allowUnfree = true;

  xsession.windowManager.i3 = import ./i3 { inherit pkgs lib; };
  xsession.enable = true;

  home.stateVersion = "23.05";
}
