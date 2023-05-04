{ pkgs, ... }:

let
  user = "helyo";
in

{
  users.users.${user} = import ./${user}.nix { inherit pkgs; };
  home-manager.useGlobalPkgs = true;
  users.extraGroups.vboxusers.members = [ "${user}" ];
  home-manager.users.${user} = import /etc/nixos/home/home.nix;
}
