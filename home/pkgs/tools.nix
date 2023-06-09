{ pkgs }:

with pkgs;
[
  discord
  flameshot
  krita
  pavucontrol
  teams
  vlc
  thunderbird
  firefox
  google-chrome
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
