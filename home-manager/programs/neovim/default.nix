{ pkgs, lib }:

let
  solarized-osaka-nvim = pkgs.vimUtils.buildVimPlugin {
    name = "solarized-osaka.nvim";
    src = pkgs.fetchFromGitHub {
      owner = "craftzdog";
      repo = "solarized-osaka.nvim";
      rev = "92c5def2b522e7869b29b55b448544f226e07524";
      sha256 = "sha256-t7q+Zxd/D8Kl95YsQghBkeysIubhzFMonYqq7jUAYLE=";
    };
  };
  mini-indentscope = pkgs.vimUtils.buildVimPlugin {
    name = "mini.indentscope";
    src = pkgs.fetchFromGitHub {
      owner = "echasnovski";
      repo = "mini.indentscope";
      rev = "a8274b6ea2d868198d27bd91a31ed5ea3a6a5744";
      sha256 = "sha256-kD1nN0EtQzZu8y/giee50uC1H9kp7+2HKvLAlHWXSzM=";
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
