with import <unstable> {};
let
  pythonEnv = python310.withPackages (ps: [
    ps.ipython
    ps.polars
    ps.sympy
  ]);

in mkShell {
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
    pythonEnv
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

    # misc
    diff-so-fancy
    exercism
    tig
  ];
}
