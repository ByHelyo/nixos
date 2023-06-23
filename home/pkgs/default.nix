{ pkgs, ... }:

{
  home.packages = with pkgs; [
    # Fonts
    (pkgs.nerdfonts.override { fonts = [ "JetBrainsMono" ]; })
  ]
  ++ (import ./cli.nix { inherit pkgs; })
  ++ (import ./java.nix { inherit pkgs; })
  ++ (import ./js.nix { inherit pkgs; })
  ++ (import ./nix-tools.nix { inherit pkgs; })
  ++ (import ./tools.nix { inherit pkgs; })
  ++ (import ./misc.nix { inherit pkgs; })
  ;

  fonts.fontconfig.enable = true;
}
