{ pkgs, ... }:

{
  home.packages = with pkgs; [
    kdePackages.kcolorchooser
  ];
}
