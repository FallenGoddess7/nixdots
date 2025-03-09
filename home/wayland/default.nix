{ config, lib, pkgs, ... }:
{
  imports = [
    ./hyprland/default.nix
    ./waybar.nix
  ];
}