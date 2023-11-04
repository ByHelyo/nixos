{ pkgs }:

with pkgs;
[
  discord
  flameshot
  krita
  pavucontrol
  vlc
  firefox-devedition
  google-chrome
  gpick
  obs-studio
  cinnamon.nemo
  insomnia
  slack
] ++ (with jetbrains; [
  idea-ultimate
  clion
])
