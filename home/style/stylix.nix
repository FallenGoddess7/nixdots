# ============================================================================ #
# =             ######  ######## ##    ## ##       #### ##     ##            = #
# =            ##    ##    ##     ##  ##  ##        ##   ##   ##             = #
# =            ##          ##      ####   ##        ##    ## ##              = #
# =             ######     ##       ##    ##        ##     ###               = #
# =                  ##    ##       ##    ##        ##    ## ##              = #
# =            ##    ##    ##       ##    ##        ##   ##   ##             = #
# =             ######     ##       ##    ######## #### ##     ##            = #
# ============================================================================ #
{ inputs, config, options, pkgs, lib, stylix, ... }:
{
  options = {
    wallpaper = lib.mkOption {
      default = ./wallpapers/reimu.png;
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

      base16Scheme = config.theme;

      image = config.wallpaper;
      imageScalingMode = "fill";

      fonts = {
        sizes = {
          applications = 11;
          desktop = 10;
          popups = 10;
          terminal = 11;
        };
        serif = config.stylix.fonts.monospace;
        sansSerif = config.stylix.fonts.monospace;
        monospace = {
          package = pkgs.jetbrains-mono;
          name = "JetBrains Mono";
        };
        emoji = {
          name = "Noto Emoji";
          package = pkgs.noto-fonts-monochrome-emoji;
        };
      };
    };
  };
}
