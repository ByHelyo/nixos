{ pkgs, ... }:

{
  programs.neovim = {
    enable = true;
    vimAlias = true;

    plugins = with pkgs;
      [ rust-analyzer ]
      ++ (with vimPlugins; [
        astrocore
        astrolsp
        astrotheme
        astroui
      ]);
  };

  home.file.".config/nvim".source = ./config;
}
