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
    pkgs.gtk2
    pkgs.libsysprof-capture
    pkgs.pcre2
    pkgs.expat
    pkgs.libuuid
    pkgs.libxdmcp
    pkgs.libselinux
  ];
}
