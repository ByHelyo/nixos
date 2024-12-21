{ pkgs, ... }:

{
  fonts.fontconfig.enable = true;

  home.packages = with pkgs; with nerd-fonts; [
    jetbrains-mono
    iosevka
  ];
}
