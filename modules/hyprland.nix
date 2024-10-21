{ config, pkgs, ... }: {

  services.displayManager.sddm = {
    enable = true;
    wayland.enable = true;
  };

  programs.hyprland.enable = true;

  xdg.portal = {
    enable = true;
    extraPortals = [pkgs.xdg-desktop-portal-gtk];
  };
}
