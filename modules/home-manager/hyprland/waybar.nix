{ pkgs, lib, ...  }: {
  programs.waybar = {
    enable = true;
    settings = {
      mainBar = {
        height = 30;
        spacing = 4;
        modules-left = [ "hyprland/workspaces" ];
        modules-center = [ "hyprland/window" ];
        modules-right = [
          "temperature"
          "clock"
        ];
      };
    };
  };
}
