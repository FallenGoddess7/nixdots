{ pkgs, lib, config, ... }:
{
  imports = [
    ./boot.nix
    ./home-manager.nix
    ./locale.nix
    # ./users.nix
  ];

  # myBoot.enable = lib.mkDefault true;
}