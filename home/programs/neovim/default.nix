{ pkgs, lib }:

{
  enable = true;
  vimAlias = true;

  extraLuaConfig = lib.concatStrings [
    (builtins.readFile ./config/options.lua)
    (builtins.readFile ./config/keymaps.lua)
    (builtins.readFile ./config/autocmds.lua)
  ];

  extraPackages = with pkgs; [
    terraform-ls
    rnix-lsp
  ] ++ (with nodePackages; [
  ]);

  plugins = with pkgs.vimPlugins; [
    # File tree
    nvim-web-devicons
    nvim-tree-lua

    # Eyecandies
    nvim-treesitter.withAllGrammars
    lualine-nvim
    onedarkpro-nvim

    # LSP
    nvim-lspconfig

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
