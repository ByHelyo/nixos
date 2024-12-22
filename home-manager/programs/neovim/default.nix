{ pkgs, lib }:

let
  mini-indentscope = pkgs.vimUtils.buildVimPlugin {
    name = "mini.indentscope";
    src = pkgs.fetchFromGitHub {
      owner = "echasnovski";
      repo = "mini.indentscope";
      rev = "da9af64649e114aa79480c238fd23f6524bc0903";
      sha256 = "sha256-zzD+RFSA9YHNWJO1030G7k6vCI0X0l3ra2vGhAmLcN0=";
    };
  };
in

{
  enable = true;
  vimAlias = true;

  extraLuaConfig = lib.concatStrings [
    (builtins.readFile ./config/plugins/catppuccin.lua)
    (builtins.readFile ./config/options.lua)
    (builtins.readFile ./config/keymaps.lua)
    (builtins.readFile ./config/autocmds.lua)
    (builtins.readFile ./config/plugins/neo-tree.lua)
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
    tokyonight-nvim
    catppuccin-nvim
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
