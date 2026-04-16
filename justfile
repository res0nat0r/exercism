default:
    @just --list

cpp:
    for dir in $(ls cpp);do cd "cpp/$dir"; cmake CMakeCache.txt; make; cd -; done

crystal:
    crystal spec crystal/*
    crystal tool format crystal/*/src

elixir:
    for dir in $(ls elixir);do cd "elixir/$dir"; mix test; mix format; cd -; done

zig:
    cd {{invocation_directory()}} && zig test test_*
