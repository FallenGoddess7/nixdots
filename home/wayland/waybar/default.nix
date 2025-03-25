{ pkgs, ... }:
{
  fonts.fontconfig.enable = true;
  home.packages = with pkgs; [
    font-awesome # needed for icons
  ];
  programs.waybar = {
    enable = true;
    style = builtins.readFile ./style.css;
    settings = [
    {
      "layer" = "top";
      "position" = "top";
      "height" = 0;
      
      modules-left = [
        "custom/launcher"
        "hyprland/workspaces"
      ];
      modules-center = [
        "hyprland/window"
      ];
      modules-right = [
        "network"
        "battery"
        "pulseaudio"
        "clock"
        "tray"
        "custom/powermenu"
      ];

      "custom/launcher" = {
        "format" = "";
        "on-click" = "sleep 0.2; pkill fuzzel || fuzzel";
        "tooltip-format" = "Launch fuzzel (App Launcher)";
      };

      "hyprland/workspaces" = {
        "format" = "{icon}";
        "format-icons" = {
		      "1" = "一";
		      "2" = "二";
		      "3" = "三";
		      "4" = "四";
		      "5" = "五";
          "6" = "六";
	      };        
        "persistent-workspaces" = {
          "*" = 6;
        };
      };
      "hyprland/window" = {
        "format" = "{class}";
        "rewrite" = {
          "Code" = "VSCode";
        };
      };

      "network" = {
        "format-wifi" = " {essid}";
        "format-ethernet" = " ethernet";
        "format-disconnected" = " offline";
				"on-click" = "nmtui";
        "tooltip-format-wifi" = "Connected to {essid} ({signalStrength}%) via {ifname}";
        "tooltip-format-ethernet" = "Connected via {ifname} to {ipaddr}/{cidr}";
        "tooltip-format-disconnected" = "Offline";
      };

      "battery" = {
        "format" = "{icon}";
        "format-icons" = [ "󰂎" "󰁺" "󰁻" "󰁼" "󰁽" "󰁾" "󰁿" "󰂀" "󰂁" "󰂂" "󰁹" ];
        "format-charging" = "󰂄";
        "format-warning" = "󰂃";
				"tooltip-format" = "{capacity}% capacity";
      };

      "pulseaudio" = {
        "format" = "{icon} {volume}%";
        "format-icons" = [ "" "" ""]; 
        "on-click" = "pavucontrol";
        "tooltip-format" = "{volume}%";
      };

      "clock" = {
        "interval" = 60;
        "format" = " {:%I:%M %p}";
        "tooltip-format" = "{:%A %m/%d/%Y}";
      };

      "custom/powermenu" = {
        "format" = "";
        "on-click" = "";
        "on-click-right" = "";
        "tooltip-format" = "lclick = Open power-menu | rclick = Lock";
      };
    }
    ];
  };
}