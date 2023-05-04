{ pkgs, ... }:

{
  home.packages = with pkgs; [
    ripgrep
    git
    exa
    fd
    docker-compose
    neofetch
    unzip
    zip
    google-cloud-sdk
    bat
    man-pages
  ];
}
