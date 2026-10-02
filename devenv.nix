{ pkgs, lib, config, inputs, ... }:

{
  packages = [
    # nixpkgs Packages
    pkgs.probe-rs-tools  # Debugger
    pkgs.git             # Git
  ];

  languages.rust = {
    enable = true;
    toolchainFile = ./rust-toolchain-nightly.toml;
  };
}
