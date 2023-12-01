{ pkgs }:

{
  enable = true;
  package = pkgs.vscodium;

  extensions = with pkgs; with vscode-extensions; [
    rust-lang.rust-analyzer
    vscodevim.vim
    eamodio.gitlens
    usernamehw.errorlens
    catppuccin.catppuccin-vsc
  ];
}
