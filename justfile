default:
    @just --list

crystal:
    crystal spec

zig:
    zig test test_*
