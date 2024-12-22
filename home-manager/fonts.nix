{ pkgs, ... }:

{
  fonts.fontconfig.enable = true;

  home.packages = with pkgs; with nerd-fonts; [
    hack
    iosevka
    monaspace
  ];
}
