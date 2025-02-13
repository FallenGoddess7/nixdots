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
{ config, lib, pkgs, ...}: {
  # ================================== X11 =================================== #
  services.xserver = {
    xkb.layout = lib.mkDefault "us";
    xkb.variant = lib.mkDefault "";
  };

  # ================================ Timezone ================================ #
  time.timeZone = lib.mkDefault "America/Chicago";
  time.hardwareClockInLocalTime = lib.mkDefault true; # Windows compatibility.

  # ===================== Internationalisation Properties ==================== #
  i18n.defaultLocale = lib.mkDefault "en_US.UTF-8";
  i18n.extraLocaleSettings = lib.mkDefault {
    LC_ADDRESS = "en_US.UTF-8";
    LC_IDENTIFICATION = "en_US.UTF-8";
    LC_MEASUREMENT = "en_US.UTF-8";
    LC_MONETARY = "en_US.UTF-8";
    LC_NAME = "en_US.UTF-8";
    LC_NUMERIC = "en_US.UTF-8";
    LC_PAPER = "en_US.UTF-8";
    LC_TELEPHONE = "en_US.UTF-8";
    LC_TIME = "en_US.UTF-8";
  };

  environment.variables = lib.mkDefault {
    TZ = "${config.time.timeZone}"
  };
}