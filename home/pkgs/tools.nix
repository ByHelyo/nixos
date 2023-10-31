{ pkgs }:

with pkgs;
[
  discord
  flameshot
  krita
  pavucontrol
  vlc
  firefox-devedition
  google-chrome-dev
  gpick
  obs-studio
  cinnamon.nemo
  insomnia
  (vscode-with-extensions.override {
    vscode = vscodium;
    vscodeExtensions = with vscode-extensions; [
      rust-lang.rust-analyzer
    ];
  })
] ++ (with jetbrains; [
  idea-ultimate
  clion
])
