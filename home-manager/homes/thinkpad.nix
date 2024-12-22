{ inputs, pkgs, lib, config, ... }:

let
  polybarSettings = import ../services/polybar/settings/thinkpad.nix;
in

{
  imports = [
    ../i3
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
      ++ (import ../pkgs/ide.nix { inherit pkgs; })
      ++ (import ../pkgs/js.nix { inherit pkgs; })
      ++ (import ../pkgs/nix-tools.nix { inherit pkgs; })
      ++ (import ../pkgs/rust.nix { inherit pkgs fenix; })
      ++ (import ../pkgs/tools.nix { inherit pkgs lib config; })
    ;
  };

  programs = {
    home-manager.enable = true;

    alacritty = import ../programs/alacritty { inherit pkgs; };
    rofi = import ../programs/rofi { inherit pkgs; };
    git = import ../programs/git;
    fish = import ../programs/fish { inherit pkgs; };
    starship = import ../programs/starship;
    neovim = import ../programs/neovim { inherit pkgs lib; };
  };

  services = {
    polybar = import ../services/polybar { inherit pkgs; settings = polybarSettings; };
    picom = import ../services/picom;
  };

  opts = {
    pkgs = {
      obs = true;
      obsidian = true;
      krita = true;
      insomnia = true;
    };
  };

  home.stateVersion = "24.05";
}
