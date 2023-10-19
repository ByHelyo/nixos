{ pkgs, lib }:

{
  enable = true;
  vimAlias = true;

  extraLuaConfig = lib.concatStrings [
    (builtins.readFile ./config/core.lua)
    (builtins.readFile ./config/plugin/nvim-tree.lua)
    (builtins.readFile ./config/plugin/treesitter.lua)
    (builtins.readFile ./config/plugin/onedarkpro.lua)
    (builtins.readFile ./config/plugin/lualine.lua)
    (builtins.readFile ./config/plugin/telescope.lua)
    (builtins.readFile ./config/plugin/bufferline.lua)
    (builtins.readFile ./config/plugin/rust-tools.lua)
    (builtins.readFile ./config/plugin/nvim-cmp.lua)
  ];

  extraPackages = with pkgs; [
  ] ++ (with nodePackages; [
  ]);

  plugins = with pkgs.vimPlugins; [
    # File tree
    nvim-web-devicons
    nvim-tree-lua
    bufferline-nvim

    # Eyecandies
    nvim-treesitter.withAllGrammars
    lualine-nvim
    onedarkpro-nvim

    # LSP
    nvim-lspconfig
    rust-tools-nvim

    # Autocompletion
    nvim-cmp
    cmp-nvim-lsp
    cmp-buffer
    cmp-path

    # Snippet
    cmp-vsnip
    vim-vsnip

    cmp-nvim-lsp-signature-help
    cmp-nvim-lua

    # Telescope
    telescope-nvim
    plenary-nvim
    popup-nvim
  ];
}
