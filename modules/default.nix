{ pkgs, lib, config, ... }:
{
  imports = [
    ./boot.nix
    ./home-manager.nix
    ./locale.nix
    # ./users.nix
  ];


  fonts.packages = with pkgs; [ 
    font-awesome
  ];
  # myBoot.enable = lib.mkDefault true;
}