{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  name = "My Portfolio Development Shell";

  # nativeBuildInputs is usually what you want -- tools you need to run
  nativeBuildInputs = with pkgs.buildPackages; [
    gnumake
    (pkgs.callPackage ./utils/bun-latest.nix {})
  ];
}
