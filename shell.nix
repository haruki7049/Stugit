{
  pkgs ? import <nixpkgs> { },
}:

pkgs.mkShell {
  nativeBuildInputs = [
    pkgs.haskellPackages.ghc
    pkgs.haskellPackages.cabal-install
  ];
}
