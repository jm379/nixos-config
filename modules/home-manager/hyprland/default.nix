{ pkgs, lib, ...  }: {

  imports = [
    ./waybar.nix
    ./rofi.nix
  ];

  wayland.windowManager.hyprland = {
    enable = true;
    settings = {
      monitor = "DP-3, 2560x1440@239.96, 0x0, 1";

      general = {
        "col.active_border" = "rgba(00cce6ff) rgba(5b00c4ff) 45deg";
        "col.inactive_border" = "rgba(666666ff) rgba(808080e3) 45deg";
      };

      decoration = {
        rounding = 8;
        shadow_offset = "0 5";
        "col.shadow" = "rgba(00000000)";
      };

      "$mod" = "SUPER";
      bind = [
        # Applications
        "$mod, SPACE, exec, rofi -show drun -replace -i"
        "$mod, E, exec, nautilus"
        "$mod, T, exec, kitty"

        # Windows
        "$mod, Q, killactive"
        "$mod, F, fullscreen, 1"
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
      ];

      bindm = [
        "$mod, mouse:272, movewindow"
        "$mod, mouse:273, resizewindow"
      ];

      "exec-once" = "waybar & waypaper --random & kitty";
    };
  };

  services.mako.enable = true;
}
