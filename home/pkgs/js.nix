{ pkgs }:

with pkgs;
[
  nodejs
  yarn
  nodePackages.pnpm
] ++ (with nodePackages; [
  firebase-tools
  pnpm
  http-server
])
