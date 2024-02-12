{ pkgs, lib, ... }:

{
  home = {
    username = "helyo";
    homeDirectory = "/home/helyo";

    packages = with pkgs; [
      (pkgs.nerdfonts.override { fonts = [ "JetBrainsMono" ]; })
    ]
    ++ (import ../pkgs/cli.nix { inherit pkgs; })
    ++ (import ../pkgs/java.nix { inherit pkgs; })
    ++ (import ../pkgs/js.nix { inherit pkgs; })
    ++ (import ../pkgs/nix-tools.nix { inherit pkgs; })
    ++ (import ../pkgs/tools.nix { inherit pkgs; })
    ++ (import ../pkgs/misc.nix { inherit pkgs; })
    ;
  };

  programs = {
    home-manager.enable = true;

    alacritty = import ../programs/alacritty { inherit pkgs; };
    rofi = import ../programs/rofi { inherit pkgs; };
    git = import ../programs/git;
    fish = import ../programs/fish { inherit pkgs; };
    neovim = import ../programs/neovim { inherit pkgs lib; };
    starship = import ../programs/starship;
  };

  services = {
    polybar = import ../services/polybar { inherit pkgs; };
  };

  xsession = {
    enable = true;
    windowManager.i3 = import ../i3 { inherit pkgs lib; };
  };

  fonts.fontconfig.enable = true;
  nixpkgs.config.allowUnfree = true;

  home.stateVersion = "24.05";
}
