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
  libreoffice
  gpick
  zoom-us
  obs-studio
  gnome.nautilus
  blender
  insomnia
  postman
] ++ (with jetbrains; [
  idea-ultimate
  clion
  rider
])
