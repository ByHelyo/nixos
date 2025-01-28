{ lib, pkgs, config, ... }:

{
  options = {
    opts = {
      pkgs = {
        insomnia = lib.mkOption {
          type = lib.types.bool;
          default = false;
        };

        krita = lib.mkOption {
          type = lib.types.bool;
          default = false;
        };

        obs = lib.mkOption {
          type = lib.types.bool;
          default = false;
        };

        obsidian = lib.mkOption {
          type = lib.types.bool;
          default = false;
        };

        slack = lib.mkOption {
          type = lib.types.bool;
          default = false;
        };

        cursor = lib.mkOption {
          type = lib.types.bool;
          default = false;
        };
      };
    };
  };
}
