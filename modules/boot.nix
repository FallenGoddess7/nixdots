# ============================================================================ #
# =                  ########   #######   #######  ########                  = #
# =                  ##     ## ##     ## ##     ##    ##                     = #
# =                  ##     ## ##     ## ##     ##    ##                     = #
# =                  ########  ##     ## ##     ##    ##                     = #
# =                  ##     ## ##     ## ##     ##    ##                     = #
# =                  ##     ## ##     ## ##     ##    ##                     = #
# =                  ########   #######   #######     ##                     = #
# ============================================================================ #
# Boot configurations for my various NixOS systems.
{ config, lib, pkgs, ... }: {
  # =============================== Boot Loader ============================== #
  boot.loader = {
    systemd-boot = {
      enable = lib.mkDefault true;
      # Whether the boot image should be editable at start up.
      # Enabling is a security risk as an attacker could gain root during init.
      editor = lib.mkDefault false;
      configurationLimit = lib.mkDefault 10;
      # Systemd-boot resolution.
      consoleMode = lib.mkDefault "max";
    };
    efi.canTouchEfiVariables = lib.mkDefault true;
    timeout = lib.mkDefault 10;
  };

  # ================================== Kernel ================================ #
  # Kernel Package to use
  boot.kernelPackages = lib.mkDefault pkgs.linuxPackages_zen;
  # Additional Kernel modules for the system to install.
  boot.kernelModules = lib.mkDefault [ "xpadneo" ];
  boot.kernelParams = lib.mkDefault [
    "quiet"
    "splash"
    "rd.udev.log_level=3"
    "rd.systemd.show_status=false"
    "udev.log_priority=3"
  ];

  # ================================= initrd ================================= #
  boot.initrd = {
    # Should NixOS display messages during boot.
    verbose = lib.mkDefault false;
    # Whether to use systemd in initrd.
    systemd.enable = lib.mkDefault true;
    # Allows system process communication during boot.
    systemd.dbus.enable = lib.mkDefault true;
    # Should networking be enabled during boot.
    network.enable = lib.mkDefault true;
    # Required for the above option, allows ethernet drivers to be accessable
    # during boot.
    availableKernelModules = lib.mkDefault [
      "iwlwifi"
      "r8169"
    ];

    # Should systemd access the network during boot.
    systemd.network.enable = lib.mkDefault true;
    # Should systemd wait for network availability before continuing booting.
    systemd.network.wait-online.enable = lib.mkDefault false;
    # What to compress the Kernel image with.
    compressor = lib.mkDefault "zstd";
  };
  boot.consoleLogLevel = lib.mkDefault 0;

  # ============================== Miscellaneous ============================= #
  # Enabling prevents the Nix store from being modified. This is automatically
  # disabled when needed (ex. Rebuilds).
  boot.readOnlyNixStore = lib.mkDefault true;
  # Whether /tmp should be cleared on boot.
  boot.tmp.cleanOnBoot = lib.mkDefault true;
  # Pretty boot logos.
  boot.plymouth.enable = lib.mkDefault true;
  systemd.watchdog.rebootTime = lib.mkDefault "10s";
}