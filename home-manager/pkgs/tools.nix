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
  chromium
] ++ (with jetbrains; [
  idea-ultimate
  clion
])
