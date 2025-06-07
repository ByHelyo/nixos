{ pkgs, ... }:

{
  programs.neovim = {
    enable = true;
    vimAlias = true;

    extraPackages = with pkgs; [
      vtsls
    ];

    plugins = with pkgs;
      [
      ]
      ++ (with vimPlugins; [
        astrocore
        astrolsp
        astrotheme
        astroui
      ]);
  };

  home.file.".config/nvim".source = ./config;
}
