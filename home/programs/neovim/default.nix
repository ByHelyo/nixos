{ pkgs, lib }:

{
  enable = true;
  vimAlias = true;

  extraLuaConfig = lib.concatStrings [
    (builtins.readFile ./config/core.lua)
    (builtins.readFile ./config/plugins/onedark.lua)
    (builtins.readFile ./config/plugins/lualine.lua)
    (builtins.readFile ./config/plugins/tree-lua.lua)
    (builtins.readFile ./config/plugins/treesitter.lua)
    (builtins.readFile ./config/plugins/telescope.lua)
    (builtins.readFile ./config/plugins/lspconfig.lua)
    (builtins.readFile ./config/plugins/rust-tools.lua)
    (builtins.readFile ./config/plugins/nvim-cmp.lua)
  ];

  extraPackages = with pkgs; [
    rust-analyzer
    rnix-lsp
    cmake-language-server
    ccls
  ] ++ (with nodePackages; [
    typescript-language-server
    svelte-language-server
    vscode-langservers-extracted
  ]);

  plugins = with pkgs.vimPlugins; [

    # File tree
    nvim-tree-lua
    nvim-web-devicons

    # LSP
    nvim-lspconfig
    rust-tools-nvim

    # Autocompletion
    nvim-cmp
    lspkind-nvim

    cmp-buffer
    cmp-nvim-lsp

    cmp-nvim-lsp-signature-help
    cmp-nvim-lua
    cmp-path
    cmp-vsnip
    vim-vsnip

    # Eyecandies
    nvim-treesitter.withAllGrammars
    lualine-nvim
    onedark-nvim

    # Telescope
    telescope-nvim
    plenary-nvim
    popup-nvim
  ];
}
