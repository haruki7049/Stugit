{
  pkgs ? import <nixpkgs> { },
}:

pkgs.mkShell {
  nativeBuildInputs = [
    pkgs.haskellPackages.ghc # GHC haskell compiler
    pkgs.haskellPackages.cabal-install # Cabal package manager
    pkgs.haskellPackages.haskell-language-server # Haskell LSP
    pkgs.haskellPackages.cabal-fmt # Cabal code formatter

    pkgs.pkg-config # pkg-config
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
