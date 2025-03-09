{ ... }:
{
  imports = [
    ./keybinds.nix
  ];

  wayland.windowManager.hyprland = {
    enable = true;
    
    settings = {
      exec-once = [
        "waybar"
      ];

      monitor = [
        "HDMI-A-1, 1920x1080@60, 0x0, 1"
      ];

      general = {
        border_size = 2;
        gaps_in = 5;
        gaps_out = 10;
        layout = "dwindle";
        snap = {};
      };

      decoration = {
        rounding = 10;
        rounding_power = 2.0;
        active_opacity = 0.98;
        inactive_opacity = 0.9;
        fullscreen_opacity = 1.0;
        dim_inactive = true;
        dim_strength = 0.35;
        blur = {
          enabled = true;
          size = 6;
          passes = 2;
          ignore_opacity = true;
          new_optimizations = true;
          popups = true;
        };
        shadow = {
          enabled = false;
        };
      };

      dwindle = {
        force_split = 2;
      };

      animations = {
        enabled = true;
        first_launch_animation = true;
      };

      input = {
        numlock_by_default = true;
        repeat_rate = 30;
        repeat_delay = 500;
        follow_mouse = true;
      };

      misc = {
        disable_splash_rendering = true;
        font_family = "monospace";      "$mod" = "SUPER";
        key_press_enables_dpms = true;
      };

      ecosystem = {
        no_update_news = false;
        no_donation_nag = true;
      };
    };
  };
}