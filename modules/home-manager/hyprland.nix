{ pkgs, lib, ...  }: {

  wayland.windowManager.hyprland = {
    enable = true;
    settings = {
    };
  };

  programs.waybar.enable = true;
  programs.mako.enable = true;
  programs.rofi = {
    enable = true;
    package = pkgs.rofi-wayland;
  };
}
