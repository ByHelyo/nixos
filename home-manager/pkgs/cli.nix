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

  (lib.mkIf config.opts.pkgs.dev stripe-cli)
  (lib.mkIf config.opts.pkgs.dev gnumake)
  (lib.mkIf config.opts.pkgs.dev docker-compose)
]
