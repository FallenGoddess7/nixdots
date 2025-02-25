{ inputs, pkgs, lib, ... }:
{
  imports = [
    ./stylix.nix
  ];

  wallpaper = lib.mkDefault ../wallpapers/reimu.png;
  theme = lib.mkDefault ./themes/everforest-dark-hard.yaml
}