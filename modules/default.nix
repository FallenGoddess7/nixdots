{ pkgs, lib, config, ... }:
{
  imports = [
    ./boot.nix
    ./locale.nix
    ./users.nix
  ];

  myBoot.enable = lib.mkDefault true;
}