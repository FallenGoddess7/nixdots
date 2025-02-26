# ============================================================================ #
# =             ######  ######## ##    ## ##       #### ##     ##            = #
# =            ##    ##    ##     ##  ##  ##        ##   ##   ##             = #
# =            ##          ##      ####   ##        ##    ## ##              = #
# =             ######     ##       ##    ##        ##     ###               = #
# =                  ##    ##       ##    ##        ##    ## ##              = #
# =            ##    ##    ##       ##    ##        ##   ##   ##             = #
# =             ######     ##       ##    ######## #### ##     ##            = #
# ============================================================================ #
{ inputs, config, pkgs, lib, stylix, ... }:
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

      fonts = {
        serif = config.stylix.fonts.monospace;
        sansSerif = config.stylix.fonts.monospace;
        monospace = {
          packages = pkgs.jetbrains-mono;
          name = "JetBrains Mono";
        };
        emoji = {
          name = "Noto Emoji";
          package = pkgs.noto-fonts-monochrome-emoji;
        };
      };

      base16Scheme = "${config.theme}";
      polarity = "dark";

      image = "${config.wallpaper}";
      imageScalingMode = "fill";
    };
  };
}