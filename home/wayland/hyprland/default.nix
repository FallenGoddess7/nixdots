{ ... }:
{
  imports = [
    ./keybinds.nix
  ];
  wayland.windowManager.hyprland = {
    
    enable = true;
    settings = {
      "$mod" = "SUPER";
      general = {

        snap = {};
      };
      decoration = {};
      animations = {};
      input = {};
      group = {};
      misc = {};
      binds = {};
    };
  };
}
