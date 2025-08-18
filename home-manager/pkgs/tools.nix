{ pkgs, config, lib }:

with pkgs;
[
  discord

  google-chrome
  chromium
  firefox-devedition

  stremio
  vlc

  (lib.mkIf config.opts.pkgs.i3 flameshot)
  (lib.mkIf config.opts.pkgs.i3 pavucontrol)
  (lib.mkIf config.opts.pkgs.i3 nemo)

  (lib.mkIf config.opts.pkgs.obs obs-studio)

  (lib.mkIf config.opts.pkgs.insomnia insomnia)

  (lib.mkIf config.opts.pkgs.obsidian obsidian)

  (lib.mkIf config.opts.pkgs.davinci davinci-resolve)

  (lib.mkIf config.opts.pkgs.krita krita)

  (lib.mkIf config.opts.pkgs.melonds melonDS)
]
