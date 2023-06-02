{ pkgs, lib, ... }:

{
  imports = [
    ./pkgs
    ./services
    ./programs
  ];

  xsession.windowManager.i3 = import ./i3 { inherit pkgs lib; };
  xsession.enable = true;

  home.stateVersion = "23.11";
}
