{
  description = "Nixos";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";

      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager }:
    {
      nixosConfigurations =
        let
          defaultModules = [
            home-manager.nixosModules.home-manager
            {
              home-manager.useGlobalPkgs = true;
              home-manager.useUserPackages = true;
              home-manager.users.helyo = import ./home-manager/home.nix;
            }
          ];
        in

        {
          "ideapad" = nixpkgs.lib.nixosSystem {
            system = "x86_64-linux";

            modules = [
              ./nixos/ideapad
            ] ++ defaultModules;
          };
        };
    };
}

