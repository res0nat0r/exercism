default:
    @just --list

crystal:
    crystal spec crystal/*
    crystal tool format crystal/*/src

zig:
    cd {{invocation_directory()}} && zig test test_*
