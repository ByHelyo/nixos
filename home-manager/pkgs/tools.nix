{ pkgs, config, lib }:

with pkgs;
[
  discord
  (lib.mkIf config.opts.pkgs.slack slack)

  flameshot
  pavucontrol
  gpick
  nemo

  google-chrome
  chromium
  firefox-devedition

  vlc
  (lib.mkIf config.opts.pkgs.obs obs-studio)

  (lib.mkIf config.opts.pkgs.insomnia insomnia)
  (lib.mkIf config.opts.pkgs.obsidian obsidian)
  (lib.mkIf config.opts.pkgs.krita krita)
]
