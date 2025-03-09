{ ... }:
{
  programs.waybar = {
    enable = true;
    settings = [
      {
        "layer" = "top";
        "position" = "top";
        modules-left = [
          "hyprland/workspaces"
        ];
        modules-center = [
          "clock"
        ];
        modules-right = [
          "tray"
        ];
      }
    ];
  };
}