{ pkgs, lib }:

let
  solarized-osaka-nvim = pkgs.vimUtils.buildVimPlugin {
    name = "solarized-osaka.nvim";
    src = pkgs.fetchFromGitHub {
      owner = "craftzdog";
      repo = "solarized-osaka.nvim";
      rev = "d3272bc510deecd423833771e443ab0eaf8cd802";
      sha256 = "sha256-FU7IagWh7YqRRBITrYp8Sg3C0n9KCHjDugPhvB51oYw=";
    };
  };
  mini-indentscope = pkgs.vimUtils.buildVimPlugin {
    name = "mini.indentscope";
    src = pkgs.fetchFromGitHub {
      owner = "echasnovski";
      repo = "mini.indentscope";
      rev = "5a8369475cd7cd6f207a4d288406d03b0fc48bdb";
      sha256 = "sha256-bMGAicmYlOzgI/dNb4Z6UQy5ZQFRUGsI84V2DTljtGM=";
    };
  };
in

{
  enable = true;
  vimAlias = true;

  extraLuaConfig = lib.concatStrings [
    (builtins.readFile ./config/options.lua)
    (builtins.readFile ./config/keymaps.lua)
    (builtins.readFile ./config/autocmds.lua)
    (builtins.readFile ./config/plugins/neo-tree.lua)
    (builtins.readFile ./config/plugins/solarized-osaka.lua)
    (builtins.readFile ./config/plugins/nvim-treesitter.lua)
    (builtins.readFile ./config/plugins/git-signs.lua)
    (builtins.readFile ./config/plugins/vim-illuminate.lua)
    (builtins.readFile ./config/plugins/lspconfig.lua)
    (builtins.readFile ./config/plugins/luasnip.lua)
    (builtins.readFile ./config/plugins/nvim-cmp.lua)
    (builtins.readFile ./config/plugins/telescope.lua)
    (builtins.readFile ./config/plugins/lualine.lua)
    (builtins.readFile ./config/plugins/indent-blankline.lua)
    (builtins.readFile ./config/plugins/mini-indentscope.lua)
    (builtins.readFile ./config/plugins/ts-autotags.lua)
    (builtins.readFile ./config/plugins/dressing.lua)
  ];

  extraPackages = with pkgs; [
    terraform-ls
    tailwindcss-language-server
    ccls
  ] ++ (with nodePackages; [
    typescript-language-server
  ]);

  plugins = with pkgs.vimPlugins; [
    neo-tree-nvim
    solarized-osaka-nvim
    gitsigns-nvim
    vim-illuminate
    nvim-treesitter.withAllGrammars
    telescope-nvim
    nvim-lspconfig
    luasnip
    nvim-cmp
    lualine-nvim
    rustaceanvim
    indent-blankline-nvim
    mini-indentscope
    nvim-ts-autotag
    telescope-file-browser-nvim
    dressing-nvim
    friendly-snippets
    telescope-fzf-native-nvim

    nvim-web-devicons
    plenary-nvim
    cmp-nvim-lsp
    cmp-buffer
    cmp-path
    cmp_luasnip
  ];
}
