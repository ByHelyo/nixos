{ pkgs, config, lib }:

with pkgs;
[
  discord

  google-chrome
  chromium
  firefox-devedition

  #stremio
  vlc
]
++ (lib.optionals config.opts.pkgs.i3 [ flameshot pavucontrol nemo ])
++ (lib.optionals config.opts.pkgs.i3 [ flameshot pavucontrol nemo ])
++ (lib.optionals config.opts.pkgs.obs [ obs-studio ])
++ (lib.optionals config.opts.pkgs.insomnia [ insomnia ])
++ (lib.optionals config.opts.pkgs.krita [ krita ])
++ (lib.optionals config.opts.pkgs.games [ melonDS ])
