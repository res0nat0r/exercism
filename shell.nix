{ nixpkgs ? import <unstable> { } }:

with nixpkgs; mkShell {
  nativeBuildInputs = with pkgs; [
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
    gnat
    cmake
    unison-ucm
    exercism
    diff-so-fancy
    tig
  ];
}
