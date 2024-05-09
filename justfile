default:
    @just --list

crystal:
    crystal spec

zig:
    cd {{invocation_directory()}} && zig test test_*
