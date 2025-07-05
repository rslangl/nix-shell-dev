let
  pkgs = import (builtins.fetchTarball {
    # renovate: datasource=github-tags depName=nixpkgs
    url = "https://github.com/NixOS/nixpkgs/archive/refs/tags/24.05.tar.gz";
  }) {};
in
  pkgs
