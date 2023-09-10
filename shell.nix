with import <unstable> {};
let
  pythonEnv = python310.withPackages (ps: [
    ps.ipython
    ps.polars
    ps.rich
    ps.sympy
  ]);

in mkShell {
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
