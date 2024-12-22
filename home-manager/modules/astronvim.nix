{ pkgs, ... }:

{
  programs.neovim = {
    enable = true;
    vimAlias = true;
  };

  home.packages = with pkgs; [ xclip ];

  xdg.configFile = {
    "nvim" = {
      recursive = true;
      source = pkgs.fetchFromGitHub {
        owner = "AstroNvim";
        repo = "template";
        rev = "1f2e5231efb190d034634b7c11a73dd3a2a46311";
        sha256 = "sha256-Fu0nUmwl5140RcB6DTAHdLi0W0Z9n/93cM9NRG7IgOM=";
      };
    };
  };
}
