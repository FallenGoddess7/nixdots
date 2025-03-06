# ============================================================================ #
# =                 ##    ## #### ######## ######## ##    ##                 = #
# =                 ##   ##   ##     ##       ##     ##  ##                  = #
# =                 ##  ##    ##     ##       ##      ####                   = #
# =                 #####     ##     ##       ##       ##                    = #
# =                 ##  ##    ##     ##       ##       ##                    = #
# =                 ##   ##   ##     ##       ##       ##                    = #
# =                 ##    ## ####    ##       ##       ##                    = #
# ============================================================================ #
{ lib, ... }:
{
  programs.kitty = lib.mkForce {
		enable = true;
    shellIntegration.enableZshIntegration = true;
    settings = {
			# ================================ Fonts =============================== #
      font_family =      "monospace";
      bold_font =        "auto";
      italic_font =      "auto";
      bold_italic_font = "auto";

      # =============================== Cursor =============================== #
      cursor_shape = "beam";
      cursor_shape_unfocused = "block";
      cursor_beam_thickness = 1.5;
      cursor_blink_interval = "0.4 linear";
      cursor_stop_blinking_after = 10;

      # ============================= Performance ============================ #
      repaint_delay = 10;
      sync_to_monitor = "yes";

      # ============================ Terminal Bell =========================== #
      enable_audio_bell = "no";

      # ============================ Window Layout =========================== #
      confirm_os_window_close = 0;

      # ============================ Color Scheme ============================ #
      background_opacity = 0.9;
		};    
  }; 
}