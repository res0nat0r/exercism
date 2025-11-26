default:
    @just --list

crystal:
    crystal spec crystal/*

zig:
    cd {{invocation_directory()}} && zig test test_*
