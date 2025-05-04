{ pkgs, config, lib }:

with pkgs; with jetbrains;
[
  idea-ultimate
  clion
  (lib.mkIf config.opts.pkgs.cursor code-cursor)
  (lib.mkIf config.opts.pkgs.cursor windsurf)
]
