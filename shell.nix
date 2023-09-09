{ nixpkgs ? import <unstable> { } }:

with nixpkgs; mkShell {
  nativeBuildInputs = with pkgs; [
    # ballerina
    ballerina

    # bash
    bats
    shellcheck

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

    # haskell
    haskell.compiler.native-bignum.ghc928
    ihaskell
    ormolu
    stack
    stylish-haskell

    # ocaml
    ocaml

    # julia
    julia

    # python
    jupyter
    python310Full
    python310Packages.ipython
    python310Packages.polars
    python310Packages.sympy
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

    # misc
    diff-so-fancy
    exercism
    tig
  ];
}
