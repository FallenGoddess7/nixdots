{ inputs, pkgs, lib, ... }:
{
  imports = [
    ./theme/theme.nix
  ];

  wallpaper = lib.mkDefault ./wallpapers/reimu.png;
  theme = lib.mkDefault ./themes/everforest-dark-hard.yaml
}
