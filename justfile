default:
    @just --list

elixir:
  for dir in $(ls elixir);do cd "elixir/$dir"; mix test; cd -; done

crystal:
    crystal spec crystal/*
    crystal tool format crystal/*/src

zig:
    cd {{invocation_directory()}} && zig test test_*
