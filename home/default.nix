{ inputs, pkgs, lib, userSettings, stylix, ... }:
{

  home.username = userSettings.username;
  home.homeDirectory = "/home/"+userSettings.username;

  imports = [
    # ./apps/default.nix
    ./shell/default.nix
    ./style/default.nix
    # ./wayland/default.nix
    inputs.stylix.homeManagerModules.stylix
  ];


  programs.vscode = {
    enable = true;
    profiles.default = with pkgs; {
      vscode-extensions.jnoortheen.nix-ide
      vscode-extensions.mkhl.direnv
    };
  };


  # What version to lock interpretation of the config file.
  # Do not change this unless you want to rewrite most of your config files.
  home.stateVersion = "24.11";

  # Let Home-manager install and manage itself.
  programs.home-manager.enable = true;
}
