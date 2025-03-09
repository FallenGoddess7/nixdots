{ ... }:
{
  programs.waybar = {
    enable = true;
    systemd = {
      enable = false;
      target = "graphical-session.target";
    };
    settings = [
      {
        "layer" = "top";
        "position" = "top";
        modules-left = [
          "custom/fuzzel"
          "hyprland/workspaces"
        ];
        modules-center = [
          "clock"
        ];
        modules-right = [
          "tray"
          "custom/powermenu"
        ];
      }
    ];
    style = ''
    
    '';
  };
}