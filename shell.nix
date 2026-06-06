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

    pkgs.gobject-introspection
    pkgs.libsysprof-capture
    pkgs.pcre2
    pkgs.expat
    pkgs.libxdmcp
    pkgs.libuuid
    pkgs.libselinux
    pkgs.libsepol
    pkgs.fribidi
    pkgs.libthai
    pkgs.libdeflate
    pkgs.libdatrie
    pkgs.lerc
    pkgs.xz
    pkgs.zstd
    pkgs.libwebp
  ];
}
