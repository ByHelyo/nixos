{ pkgs, config, ... }:

{
  fonts.fontconfig.enable = true;

  home.packages = with pkgs; with nerd-fonts; [
    (lib.mkIf config.opts.pkgs.i3 iosevka)
    monaspace
  ];
}
