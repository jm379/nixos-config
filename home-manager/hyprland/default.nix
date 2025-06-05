{ pkgs, lib, ...  }: {
  imports = [
    ./waybar.nix
    ./rofi.nix
  ];

  wayland.windowManager.hyprland = {
    enable = true;
    settings = {
      general = {
        "col.active_border" = "rgba(00cce6ff) rgba(5b00c4ff) 45deg";
        "col.inactive_border" = "rgba(666666ff) rgba(808080e3) 45deg";
        gaps_in = 4;
        gaps_out = 8;
      };

      render = {
        cm_fs_passthrough = 2;
      };
  
      experimental = {
        # Auto HDR
        xx_color_management_v4 = false;
        # xx_color_management_v4 = true;
      };

      env = [
        "HYPRCURSOR_THEME,catppuccin-mocha-dark-cursors"
        "HYPRCURSOR_SIZE,28"
      ];

      monitor = [
        ", 3840x2160@120, auto, 1.5, bitdepth, 10"
      ];

      decoration = {
        rounding = 8;
        shadow = {
          offset = "0 5";
        };
      };

      "$mod" = "SUPER";
      bind = [
        # Applications
        "$mod, SPACE, exec, rofi -show drun -replace -i"
        "$mod, E, exec, nautilus"
        "$mod, T, exec, kitty"
        "$mod, B, exec, firefox"

        # Windows
        "$mod, Q, killactive"
        "$mod, F, fullscreen, 1"
        "$mod SHIFT, F, fullscreen, 0"
        "$mod, M, layoutmsg, movetoroot"
        "$mod, H, movefocus, l"
	    "$mod, J, movefocus, d"
	    "$mod, K, movefocus, u"
	    "$mod, L, movefocus, r"
        "$mod SHIFT, H, movewindow, l"
        "$mod SHIFT, J, movewindow, d"
        "$mod SHIFT, K, movewindow, u"
        "$mod SHIFT, L, movewindow, r"
	    "$mod, Y, toggleFloating"
        "ALT, Tab, cyclenext"
        "ALT CTRL, Tab, cyclenext, prev"

        # Workspaces
        "$mod, Tab, workspace, e+1"
        "$mod SHIFT, Tab, workspace, e-1"
        "$mod ALT, L, movetoworkspace, e+1"
        "$mod ALT, H, movetoworkspace, e-1"
      ];

      bindm = [
        "$mod, mouse:272, movewindow"
        "$mod, mouse:273, resizewindow"
      ];

      "exec-once" = "waybar & clipse -listen & kitty";
    };
  };

  services.hyprpaper = {
    enable = true;
    settings = {
      ipc = "on";
      splash = false;
      splash_offset = 2.0;
      preload = [ "~/Pictures/Wallpapers/nix-dark-gray.png" ];
      wallpaper = [ ",~/Pictures/Wallpapers/nix-dark-gray.png" ];
    };
  };

  services.mako.enable = true;
}
