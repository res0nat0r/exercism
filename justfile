default:
  @just --list

crystal:
  cd crystal && crystal spec *

zig:
  cd zig && zig test */test_*
