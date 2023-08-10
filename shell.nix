{ nixpkgs ? import <unstable> { } }:

with nixpkgs; mkShell {
  nativeBuildInputs = with pkgs; [
    python310Packages.polars
    python310Packages.ipython
    vimPlugins.vim-ipython
    ballerina
    clojure
    leiningen
    elixir
    ocaml
    crystal
    julia
    python310Full
    ruby_3_2
    cargo
    rustc
    R
    haskell.compiler.native-bignum.ghc928
    stack
    ormolu
    ihaskell
    stylish-haskell
    gnat
    cmake
    unison-ucm
    exercism
    diff-so-fancy
    tig
    jupyter
  ];
}
