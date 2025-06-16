{ pkgs, config, lib }:

with pkgs;
[
  discord

  google-chrome
  chromium
  firefox-devedition

  (lib.mkIf config.opts.pkgs.slack slack)

  (lib.mkIf config.opts.pkgs.i3 flameshot)
  (lib.mkIf config.opts.pkgs.i3 pavucontrol)
  (lib.mkIf config.opts.pkgs.i3 nemo)

  (lib.mkIf config.opts.pkgs.vlc vlc)

  (lib.mkIf config.opts.pkgs.obs obs-studio)

  (lib.mkIf config.opts.pkgs.insomnia insomnia)
  (lib.mkIf config.opts.pkgs.bruno bruno)

  (lib.mkIf config.opts.pkgs.obsidian obsidian)
  (lib.mkIf config.opts.pkgs.krita krita)

  (lib.mkIf config.opts.pkgs.davinci davinci-resolve)
]
