{ pkgs, lib, ...  }: {
  programs.waybar = {
    enable = true;
    settings = {
      mainBar = {
        height = 32;
        spacing = 4;
        modules-left = [
          "hyprland/workspaces"
        ];
        modules-center = [ 
          "hyprland/window"
        ];
        modules-right = [
          "clock"
        ];

        "hyprland/workspaces" = {
          format = "{icon}";
          format-icons = {
            active = "";
            default = "";
          };
          persistent-workspaces = {
            "*" = 5;
          };
        };

        "hyprland/window" = {
          icon = true;
          icon-size = 20;
        };

        clock = {
          format = "{:%H:%M}  ";
          tooltip = true;
          tooltip-format = "{:%d/%m/%Y}";
        };
      };
    };
  };
}
