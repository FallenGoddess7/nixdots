{ ... }:
{
  wayland.windowManager.hyprland.settings = {
    "$mod" = "SUPER";
    bindm = [
      "$mod, mouse:273, movewindow"
      "$mod, mouse:272, resizewindow"
    ];
    bind = [
      "$mod&Shift_L, Q, exit" # Exit Hyprland
      "$mod, q, killactive" # Close the currently focused window
      "$mod&SControl_L, k, forcekillactive" # Force close the currently focused window
      "$mod, Return, exec, kitty" # Launch kitty (terminal)
      "$mod, p, exec, fuzzel" # Launch fuzzel (program launcher)

      "$mod, Space, togglefloating" # Toggle window between floating and tiled
      "$mod, f, fullscreen, 0" # Toggle window betwwen being fullscreen and not
      
      # Move focus (arrow keys)
      "$mod, left, movefocus, l"
      "$mod, right, movefocus, r"
      "$mod, up, movefocus, u"
      "$mod, down, movefocus, d"
      
      # Move focus (Vim style)
      "$mod, h, movefocus, l"
      "$mod, l, movefocus, r"
      "$mod, j, movefocus, u"
      "$mod, k, movefocus, d"
   
      # Swap focused window with window in given direction (arrow keys)
      "$mod&Shift_L, left, swapwindow, l"
      "$mod&Shift_L, right, swapwindow, r"
      "$mod&Shift_L, up, swapwindow, u"
      "$mod&Shift_L, down, swapwindow, d"

      # Swap focused window with window in given direction (Vim style)
      "$mod&Shift_L, h, swapwindow, l"
      "$mod&Shift_L, l, swapwindow, r"
      "$mod&Shift_L, j, swapwindow, u"
      "$mod&Shift_L, k, swapwindow, d"

      # Switch to workspace.
      "$mod, 1, workspace, 1"
      "$mod, 2, workspace, 2"
      "$mod, 3, workspace, 3"
      "$mod, 4, workspace, 4"
      "$mod, 5, workspace, 5"
      "$mod, 6, workspace, 6"

      # Move currently focused window to workspace and switch to that workspace
      "$mod&Shift_L, 1, movetoworkspace, 1"
      "$mod&Shift_L, 2, movetoworkspace, 2"
      "$mod&Shift_L, 3, movetoworkspace, 3"
      "$mod&Shift_L, 4, movetoworkspace, 4"
      "$mod&Shift_L, 5, movetoworkspace, 5"
      "$mod&Shift_L, 6, movetoworkspace, 6"

      # Move currently focused window to workspace but dont switch to that workspace
      "$mod&Control_L, 1, movetoworkspacesilent, 1"
      "$mod&Control_L, 2, movetoworkspacesilent, 2"
      "$mod&Control_L, 3, movetoworkspacesilent, 3"
      "$mod&Control_L, 4, movetoworkspacesilent, 4"
      "$mod&Control_L, 5, movetoworkspacesilent, 5"
      "$mod&Control_L, 6, movetoworkspacesilent, 6"
    ];
  };
}