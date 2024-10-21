{ config, pkgs, ... }: {
  programs.kitty = {
    enable = true;
    themeFile = "tokyo_night_night";
    settings = {
      font_size = 16.0;
      background_opacity = 0.6;
    };
  };
}
