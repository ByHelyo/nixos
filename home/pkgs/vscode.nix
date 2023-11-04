{ pkgs }:

with pkgs;
[
  (vscode-with-extensions.override {
    vscode = vscodium;
    vscodeExtensions = with vscode-extensions; [
      rust-lang.rust-analyzer
      vscodevim.vim
      eamodio.gitlens
      usernamehw.errorlens
      jdinhlife.gruvbox
    ];
  })
]
