{ inputs, pkgs, lib, ... }:

{
  imports = [
    ../kde
    ../fonts.nix
  ];

  nixpkgs = {
    overlays = [
      inputs.fenix.overlays.default
    ];

    config = {
      allowUnfree = true;
    };
  };

  home = {
    username = "helyo";
    homeDirectory = "/home/helyo";

    packages = with pkgs; [ ]
      ++ (import ../pkgs/cli.nix { inherit pkgs; })
      ++ (import ../pkgs/js.nix { inherit pkgs; })
      ++ (import ../pkgs/nix-tools.nix { inherit pkgs; })
      ++ (import ../pkgs/rust.nix { inherit pkgs fenix; })
      ++ (import ../pkgs/tools.nix { inherit pkgs; })
    ;
  };

  programs = {
    home-manager.enable = true;

    alacritty = import ../programs/alacritty { inherit pkgs; };
    git = import ../programs/git;
    fish = import ../programs/fish { inherit pkgs; };
    starship = import ../programs/starship;
    neovim = import ../programs/neovim { inherit pkgs lib; };
  };

  home.stateVersion = "24.05";
}
