{ config, pkgs, ... }: {
  programs.kitty = {
    enable = true;
    themeFile = "tokyo_night_night";
    settings = {
      font_size = 14.0;
      font_family = "JetBrainsMono";
      background_opacity = 0.6;
    };
  };
}
