{ pkgs, ... }:

{
  imports = [
    ./cli.nix
    ./dotnet.nix
    ./java.nix
    ./js.nix
    ./nix-tools.nix
    ./tools.nix
  ];

  home.packages = with pkgs; [
    # Fonts
    (pkgs.nerdfonts.override { fonts = [ "JetBrainsMono" ]; })
  ];

  fonts.fontconfig.enable = true;
}
