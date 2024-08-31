{ pkgs }:

{
  enable = true;
  package = pkgs.vscodium;
  extensions = with pkgs.vscode-extensions; [
    rust-lang.rust-analyzer
    vscodevim.vim
    eamodio.gitlens
  ];
}
