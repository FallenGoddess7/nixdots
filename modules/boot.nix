# ============================================================ #
# =          ########   #######   #######  ########          = #
# =          ##     ## ##     ## ##     ##    ##             = #
# =          ##     ## ##     ## ##     ##    ##             = #
# =          ########  ##     ## ##     ##    ##             = #
# =          ##     ## ##     ## ##     ##    ##             = #
# =          ##     ## ##     ## ##     ##    ##             = #
# =          ########   #######   #######     ##             = #
# ============================================================ #
# Boot configurations for my various NixOS systems.
{ pkgs, lib, config, ... }: {
  options = {
    myBoot.enable = lib.mkEnableOption "enables myBoot";
  };

  config = lib.mkIf config.myBoot.enable {
    silentBoot = [

    ];
  };
}