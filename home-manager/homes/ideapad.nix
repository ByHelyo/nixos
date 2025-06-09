{ inputs, pkgs, lib, config, ... }:

let
  polybarSettings = import ../services/polybar/settings/ideapad.nix;
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
      ++ (import ../pkgs/js.nix { inherit pkgs; })
      ++ (import ../pkgs/nix-tools.nix { inherit pkgs; })
      ++ (import ../pkgs/rust.nix { inherit pkgs fenix; })
      ++ (import ../pkgs/tools.nix { inherit pkgs config lib; })
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
    vscode = import ../programs/vscode { inherit pkgs; };
  };

  services = {
    polybar = import ../services/polybar { inherit pkgs; settings = polybarSettings; };
    picom = import ../services/picom;
  };

  opts = {
    pkgs = {
      i3 = true;
      vlc = true;
    };
  };

  home.stateVersion = "24.05";
}
