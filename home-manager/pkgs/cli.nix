{ pkgs, config, lib }:

with pkgs;
[
  ripgrep
  duf
  eza
  fd
  unzip
  zip
  bat
  fzf
  git
  neofetch
  brightnessctl
  xclip
  ffmpeg
]
++ (lib.optionals config.opts.pkgs.dev [ stripe-cli gnumake docker-compose ])
