{ inputs, pkgs, lib, userSettings, ... }:
{

  home.username = userSettings.username;
  home.homeDirectory = "/home/"+userSettings.username;

  imports = [
    # ./apps/default.nix
    ./shell/default.nix
    ./style/default.nix
    # ./wayland/default.nix
  ];

  programs.vscode.enable = true;
  programs.vscode.profiles = [
    "default"
  ];






  # What version to lock interpretation of the config file.
  # Do not change this unless you want to rewrite most of your config files.
  home.stateVersion = "24.11";

  # Let Home-manager install and manage itself.
  programs.home-manager.enable = true;
}
