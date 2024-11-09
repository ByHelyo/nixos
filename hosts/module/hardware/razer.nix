{ pkgs, ... }:

{
  hardware.openrazer.enable = true;

  users.users.helyo = { extraGroups = [ "openrazer" ]; };

  environment.systemPackages = with pkgs; [
    polychromatic
    openrazer-daemon
  ];
}
