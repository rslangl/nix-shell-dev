# nix-shell-rustdev

Isolated development environment with a nix shell

## Usage

```shell
# Install nix
curl -L https://nixos.org/nix/install | sh

# (Optional) Enable experimental features to search packages from CLI
nix --extra-experimental-features "nix-command flakes" search nixpkgs cargo

# Launch nix-shell with desired tools
nix-shell --arg enableRustTools true --arg enableGeneralTools true
```

## TODO
* ~~Fetch from dotenv~~
* Define relevant envvars
* VPN client, reading config from dotenv
