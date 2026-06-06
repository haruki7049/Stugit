{
  pkgs ? import <nixpkgs> { },
}:

pkgs.mkShell {
  nativeBuildInputs = [
    pkgs.haskellPackages.ghc # GHC haskell compiler
    pkgs.haskellPackages.cabal-install # Cabal package manager
    pkgs.pkg-config # pkg-config
    pkgs.haskellPackages.cabal-fmt # Cabal code formatter
  ];

  buildInputs = [
    pkgs.gtk4
  ];
}
