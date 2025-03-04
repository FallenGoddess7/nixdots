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
      fonts = {
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

      base16Scheme = ./themes/everforest-dark-hard.yaml;
      # polarity = "dark";

      image = ./wallpapers/reimu.png;
      imageScalingMode = "fill";

      targets.vscode.enable = false;
      enable = true;
      autoEnable = true;

    };
  };
}