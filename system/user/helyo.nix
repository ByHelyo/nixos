{ pkgs }:

{
  isNormalUser = true;
  description = "Franck Hu";
  extraGroups = [ "networkmanager" "wheel" "video" "docker" ];
  shell = pkgs.fish;
}
