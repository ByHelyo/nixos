{ pkgs, ... }:

{
  services = {
    polybar = import ./polybar { inherit pkgs; };
  };
}
