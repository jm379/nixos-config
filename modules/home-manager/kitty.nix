{ config, pkgs, ... }: {
  programs.kitty = {
    enable = true;
    themeFile = "tokyo_night_night";
    font = {
      size = 14.0;
      package = pkgs.jetbrains-mono;
      name = "0xProto Nerd Font";
    };
    shellIntegration.enableZshIntegration = true;
    settings = {
      background_opacity = 0.6;
      shell = "${pkgs.zsh}/bin/zsh";
    };
  };
}
