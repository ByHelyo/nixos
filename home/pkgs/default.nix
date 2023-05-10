{ pkgs, ... }:

{
  home.packages = with pkgs; [
    # Fonts
    (pkgs.nerdfonts.override { fonts = [ "JetBrainsMono" ]; })
  ]
  ++ (import ./dotnet.nix { inherit pkgs; })
  ++ (import ./cli.nix { inherit pkgs; })
  ++ (import ./java.nix { inherit pkgs; })
  ++ (import ./js.nix { inherit pkgs; })
  ++ (import ./nix-tools.nix { inherit pkgs; })
  ++ (import ./tools.nix { inherit pkgs; })
  ++ (import ./tools-dev.nix { inherit pkgs; })
  ;

  fonts.fontconfig.enable = true;
}
