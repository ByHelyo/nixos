{
  description = "Nixos";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    fenix = {
      url = "github:nix-community/fenix";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    hyprland.url = "github:hyprwm/Hyprland";
  };

  outputs = { self, nixpkgs, home-manager, hyprland, fenix }@inputs:
    {
      nixosConfigurations =
        {
          "ideapad" = nixpkgs.lib.nixosSystem {
            system = "x86_64-linux";

            specialArgs = { inherit inputs; };
            modules = [
              hyprland.nixosModules.default

              ./hosts/ideapad
            ];
          };
        };
    };
}
