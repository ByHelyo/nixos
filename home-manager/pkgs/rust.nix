{ pkgs, fenix }:

with pkgs;
[
  (fenix.complete.withComponents [
    "cargo"
    "clippy"
    "rust-src"
    "rustc"
    "rustfmt"
  ])
  gcc
]
