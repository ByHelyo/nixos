{ pkgs }:

with pkgs;
[
  discord
  flameshot
  krita
  pavucontrol
  vlc
  thunderbird
  firefox-devedition
  google-chrome-dev
  gpick
  zoom-us
  obs-studio
  cinnamon.nemo
  blender
  insomnia
  postman
] ++ (with jetbrains; [
  idea-ultimate
  clion
])
