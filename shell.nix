{ nixpkgs ? <nixpkgs> }:

let
  pkgs = import nixpkgs {};
in
  pkgs.mkShell {
    buildInputs = with pkgs; [
      libxml2
      libxslt
      python37Packages.poetry
      python37
    ];
}