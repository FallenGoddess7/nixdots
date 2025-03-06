{ ... }:
{
  wayland.windowManager.hyprland.settings = {
    "$mod" = "SUPER";
    bind = [
      "SUPER&Shift_L, Q, exit"
      "$mod, q, killactive"
      "$mod, k, forcekillactive"
      "$mod, Return, exec, kitty"
    ];
  };
}