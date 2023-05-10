{ pkgs }:

with pkgs;
[
  gitkraken
  insomnia
  postman
] ++ (with jetbrains; [
  idea-ultimate
  clion
  pycharm-professional
  rider
])
