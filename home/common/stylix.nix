# ============================================================================ #
# =             ######  ######## ##    ## ##       #### ##     ##            = #
# =            ##    ##    ##     ##  ##  ##        ##   ##   ##             = #
# =            ##          ##      ####   ##        ##    ## ##              = #
# =             ######     ##       ##    ##        ##     ###               = #
# =                  ##    ##       ##    ##        ##    ## ##              = #
# =            ##    ##    ##       ##    ##        ##   ##   ##             = #
# =             ######     ##       ##    ######## #### ##     ##            = #
# ============================================================================ #
{ inputs, pkgs, lib, ... }:
{
  options = {
    wallpaper = lib.mkOption {
      default = ../wallpapers/reimu.png;
      type = lib.types.path;
      description = ''
        Path to your wallpaper.
      '';
    };
    theme = lib.mkOption {
      default = ./themes/everforest-dark-hard.yaml;
      type = lib.types.path;
      description = ''
        Path to your theme.yaml.
      '';
    };
  };
  
  config = {
    stylix = {
      enable = true;
      autoEnable = true;

      base16Scheme = "${config.theme}";
      polarity = "dark";

      image = "${config.wallpaper}";
      imageScalingMode = "fill";
    };
  };
}