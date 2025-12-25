{ pkgs, config, lib }:

with pkgs; with jetbrains;
[
  (lib.mkIf config.opts.pkgs.cursor code-cursor)
]
