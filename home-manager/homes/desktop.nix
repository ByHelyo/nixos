{ inputs, pkgs, lib, config, ... }:

{
  imports = [
    ../astronvim
    ../kde
    ../fonts.nix
    ../options.nix
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
      ++ (import ../pkgs/tools.nix { inherit pkgs config lib; })
      ++ (import ../pkgs/editor.nix { inherit pkgs config lib; })
    ;
  };

  programs = {
    home-manager.enable = true;

    alacritty = import ../programs/alacritty { inherit pkgs; };
    git = import ../programs/git;
    fish = import ../programs/fish { inherit pkgs; };
    starship = import ../programs/starship;
    vscode = import ../programs/vscode { inherit pkgs; };
  };

  opts = {
    pkgs = {
      insomnia = true;
      cursor = true;
      vlc = true;
      obs = true;
      obsidian = true;
      windsurf = true;
    };
  };

  home.stateVersion = "24.05";
}
