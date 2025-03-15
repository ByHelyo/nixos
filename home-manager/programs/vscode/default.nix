{ pkgs }:

{
  enable = true;
  package = pkgs.vscodium;
  profiles.default = {
    extensions = with pkgs.vscode-extensions; [
      vscodevim.vim
      eamodio.gitlens
      usernamehw.errorlens
      github.copilot
      catppuccin.catppuccin-vsc-icons
      catppuccin.catppuccin-vsc
    ];

    userSettings = {
      "workbench.colorTheme" = "Catppuccin Mocha";
      "workbench.iconTheme" = "catppuccin-mocha";
      "editor.minimap.enabled" = false;
      "editor.fontFamily" = "'JetBrainsMono Nerd Font', 'MonaspiceNe Nerd Font', 'monospace', monospace";
    };
  };
}
