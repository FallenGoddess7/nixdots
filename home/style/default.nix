{ config, lib, pkgs, ... }:
{
  imports = [
    ./stylix.nix
  ];

  wallpaper = ./wallpapers/reimu.png;
  theme = ./themes/everforest-dark-hard.yaml;
}