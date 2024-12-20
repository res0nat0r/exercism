<<<<<<< HEAD
with (import (fetchTarball https://github.com/NixOS/nixpkgs/archive/1697b7d48044.tar.gz) { }); # unstable
=======
with (import (fetchTarball https://github.com/NixOS/nixpkgs/archive/3281bec.tar.gz) { }); # unstable
>>>>>>> main

let
  pythonEnv = python310.withPackages (ps: [
    ps.ipython
    ps.polars
    ps.rich
    ps.sympy
  ]);

in
mkShell {
  nativeBuildInputs = with pkgs; [
    pythonEnv

    # ballerina
    ballerina

    # bash
    bats
    shellcheck
    shfmt

    # C++
    gnat
    cmake

    # clojure
    clojure
    leiningen

    # crystal
    crystal

    # elixir
    elixir

    # elm
    elmPackages.elm
    elmPackages.elm-format
    elmPackages.elm-review
    elmPackages.elm-test

    # fsharp
    dotnet-sdk_7
    fsharp

    # haskell
    haskell.compiler.native-bignum.ghc928
    ihaskell
    ormolu
    stack
    stylish-haskell

    # ocaml
    ocaml
    opam
    dune_3

    # julia
    julia

    # lua
<<<<<<< HEAD
    lua
=======
    lua52Packages.busted
    lua
    luarocks
>>>>>>> main

    # python
    jupyter
    vimPlugins.vim-ipython

    # ruby
    ruby_3_2

    # rust
    cargo
    rustc

    # R
    R

    # unison
    unison-ucm

<<<<<<< HEAD
    # misc
    diff-so-fancy
    exercism
=======
    # zig
    zig

    # misc
    diff-so-fancy
    exercism
    just
    vimPlugins.vim-just
>>>>>>> main
    tig
  ];
}
