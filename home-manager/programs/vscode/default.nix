{ pkgs }:

{
  enable = true;
  package = pkgs.vscodium;
  extensions = with pkgs.vscode-extensions; [
    rust-lang.rust-analyzer
    vscodevim.vim
    eamodio.gitlens
    catppuccin.catppuccin-vsc-icons
    catppuccin.catppuccin-vsc
  ];

  userSettings = {
    "workbench.colorTheme" = "Catppuccin Mocha";
    "workbench.iconTheme" = "catppuccin-mocha";
    "editor.minimap.enabled" = false;
    "editor.fontFamily" = "'MonaspiceKr Nerd Font', 'monospace', monospace";
  };
}
