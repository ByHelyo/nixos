{ pkgs, lib, ... }:

{
  imports = [
    ./pkgs
    ./services
    ./programs
  ];

  home.username = "helyo";
  home.homeDirectory = "/home/helyo";

  nixpkgs.config.allowUnfree = true;

  xsession.windowManager.i3 = import ./i3 { inherit pkgs lib; };
  xsession.enable = true;

  home.stateVersion = "24.05";
}
