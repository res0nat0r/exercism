{ pkgs ? import <nixpkgs> { } }:

pkgs.mkShell {
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
    haskell.compiler.native-bignum.ghc928
    stack
    gnat
    cmake

    exercism
    diff-so-fancy
    tig
    vim
  ];
}