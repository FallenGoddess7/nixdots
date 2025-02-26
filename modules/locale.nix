# ============================================================================ #
# =         ##        #######   ######     ###    ##       ########          = #
# =         ##       ##     ## ##    ##   ## ##   ##       ##                = #
# =         ##       ##     ## ##        ##   ##  ##       ##                = #
# =         ##       ##     ## ##       ##     ## ##       ######            = #
# =         ##       ##     ## ##       ######### ##       ##                = #
# =         ##       ##     ## ##    ## ##     ## ##       ##                = #
# =         ########  #######   ######  ##     ## ######## ########          = #
# ============================================================================ #
# Localization configurations for my various NixOS systems.
{ config, lib, pkgs, systemSettings, ...}: {
  # ================================== X11 =================================== #
  services.xserver = {
    xkb.layout = lib.mkDefault "us";
    xkb.variant = lib.mkDefault "";
  };

  # ================================ Timezone ================================ #
  time.timeZone = lib.mkDefault systemSettings.timezone;
  time.hardwareClockInLocalTime = lib.mkDefault true; # Windows compatibility.

  # ===================== Internationalisation Properties ==================== #
  i18n.defaultLocale = lib.mkDefault systemSettings.locale;
  i18n.extraLocaleSettings = lib.mkDefault {
    LC_ADDRESS = systemSettings.locale;
    LC_IDENTIFICATION = systemSettings.locale;
    LC_MEASUREMENT = systemSettings.locale;
    LC_MONETARY = systemSettings.locale;
    LC_NAME = systemSettings.locale;
    LC_NUMERIC = systemSettings.locale;
    LC_PAPER = systemSettings.locale;
    LC_TELEPHONE = systemSettings.locale;
    LC_TIME = systemSettings.locale;
  };

  environment.variables = lib.mkDefault {
    TZ = "${config.time.timeZone}";
  };
}