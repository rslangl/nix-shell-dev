{
  pkgs ? import <nixpkgs> {},
  enableRustTools ? false,
  enableGeneralTools ? false,
}: let
  rustTools = with pkgs; [
    cargo
    rustup
  ];

  generalTools = with pkgs; [
    shellcheck
    yamllint
    git
  ];
in
  pkgs.mkShell {
    packages =
      (
        if enableRustTools
        then rustTools
        else []
      )
      ++ (
        if enableGeneralTools
        then generalTools
        else []
      );
  }
