{ pkgs }:

with pkgs;
[
  nodejs
  yarn
] ++ (with nodePackages; [
  pnpm
])
