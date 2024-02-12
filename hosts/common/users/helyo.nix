{ ... }:

{
  users.users.helyo = {
    isNormalUser = true;
    description = "Franck Hu";
    extraGroups = [ "networkmanager" "wheel" ];
  };
} 
