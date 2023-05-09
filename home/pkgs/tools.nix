{ pkgs }:

with pkgs;
[
  discord
  gitkraken
  flameshot
  postman
  krita
  insomnia
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
  obsidian
  gnome.nautilus
  blender
] ++ (with jetbrains; [
  idea-ultimate
  clion
  pycharm-professional
  rider
])
