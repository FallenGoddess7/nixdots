{ config, home-manager, inputs, lib, pkgs, systemSettings, userSettings, ... }:
{
  home-manager = {
    useGlobalPkgs = true;
    useUserPackages = true;
    backupFileExtension = "backup";
    users.${userSettings.username} = import ./home/default.nix;
    extraSpecialArgs = {
      inherit inputs;
      inherit systemSettings;
      inherit userSettings;
    };
  };
}