{ ... }:
{
  programs.kitty.enable = true;
  programs.kitty = {
		enable = true;
    shellIntegration.enableZshIntegration = true;
    settings = {
			# ========== Fonts ========== #
      font_family =      "monospace";
      bold_font =        "auto";
      italic_font =      "auto";
      bold_italic_font = "auto";
		};    
  }; 
}
