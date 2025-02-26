let
  nixpkgs= fetchTarball "https://github.com/NixOS/nixpkgs/tarball/nixos-24.05";
  pkgs = import nixpkgs { config = {}; overlays = []; };
in 

pkgs.mkShell {
    packages = with pkgs; [
      cargo
      rustup
      neovim
    ];

    shellHook = ''
      if [ -f .env ]; then
        export $(cat .env | grep -v ^# | xargs)
      fi

      echo $VPN_CONF_PATH

      echo $SRC_DIR
    '';
  }
