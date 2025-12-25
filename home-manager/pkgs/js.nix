{ pkgs }:

with pkgs;
[
  nodejs
] ++ (with nodePackages; [
  pnpm
])
