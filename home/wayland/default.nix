{ config, lib, pkgs, ... }:
{
  imports = [
    ./hyprland/default.nix
    ./fuzzel.nix
    ./waybar/default.nix
  ];
}