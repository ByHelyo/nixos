{ ... }:

let
  user = "helyo";
in

{
  users.users.${user} = import ./${user}.nix;
  home-manager.users.${user} = import /etc/nixos/home/home.nix;
}
