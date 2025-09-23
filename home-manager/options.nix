{ lib, pkgs, config, ... }:

{
  options = {
    opts = {
      pkgs = {
        dev = lib.mkOption {
          type = lib.types.bool;
          default = false;
        };

        insomnia = lib.mkOption {
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

        cursor = lib.mkOption {
          type = lib.types.bool;
          default = false;
        };

        i3 = lib.mkOption {
          type = lib.types.bool;
          default = false;
        };

        windsurf = lib.mkOption {
          type = lib.types.bool;
          default = false;
        };

        davinci = lib.mkOption {
          type = lib.types.bool;
          default = false;
        };

        krita = lib.mkOption {
          type = lib.types.bool;
          default = false;
        };

        melonds = lib.mkOption {
          type = lib.types.bool;
          default = false;
        };

        rust = lib.mkOption {
          type = lib.types.bool;
          default = false;
        };
      };
    };
  };
}
