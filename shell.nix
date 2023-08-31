{ nixpkgs ? import <unstable> { } }:

with nixpkgs; mkShell {
  nativeBuildInputs = with pkgs; [
    # ballerina
    ballerina

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
    elmPackages.elm-test
    elmPackages.elm-format
    elmPackages.elm-review

    # haskell
    haskell.compiler.native-bignum.ghc928
    stack
    ormolu
    ihaskell
    stylish-haskell

    # ocaml
    ocaml

    # julia
    julia

    # python
    python310Full
    python310Packages.polars
    python310Packages.ipython
    vimPlugins.vim-ipython
    jupyter

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
    exercism
    diff-so-fancy
    tig
  ];
}
