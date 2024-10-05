{ pkgs }:

{
  enable = true;

  interactiveShellInit = ''
    set fish_greeting # Disable greeting
  '';

  shellAliases = {
    ls = "${pkgs.eza}/bin/eza";
    tree = "${pkgs.eza}/bin/eza -T";
    cat = "${pkgs.bat}/bin/bat";
    pn = "${pkgs.nodePackages.pnpm}/bin/pnpm";
    cl = "clear";
    rm = "rm -vd";
    mkdir = "mkdir -pv";
    dc = "${pkgs.docker-compose}/bin/docker-compose";
    tf = "terraform";
  };
}
