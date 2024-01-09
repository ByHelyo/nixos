{ pkgs, lib, ... }:

{
  programs = {
    home-manager.enable = true;

    alacritty = import ./alacritty { inherit pkgs; };
    rofi = import ./rofi { inherit pkgs; };
    git = import ./git;
    fish = import ./fish { inherit pkgs; };
    neovim = import ./neovim { inherit pkgs lib; };
    starship = import ./starship;
  };
}
