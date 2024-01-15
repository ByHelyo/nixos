{ pkgs }:

let
  fenix = import (fetchTarball "https://github.com/nix-community/fenix/archive/main.tar.gz") { };
  rust-toolchain = with fenix; combine [
    (complete.withComponents [
      "cargo"
      "clippy"
      "rust-src"
      "rustc"
    ])
    (latest.withComponents [
      "rustfmt"
      "rust-analyzer"
    ])
    targets.wasm32-unknown-unknown.stable.rust-std
  ];
in

with pkgs;

[
  rust-toolchain
  grcov
  rustc.llvmPackages.llvm
]
