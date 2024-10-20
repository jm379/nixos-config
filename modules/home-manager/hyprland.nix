{ pkgs, lib, ...  }: {

  wayland.windowManager.hyprland = {
    enable = true;
    settings = {
      "$mod" = "SUPER";
      bind = [
        "$mod, Q, killactive"
        "$mod, F, fullscreen, 1"
        "$mod, SPACE, exec, rofi -show drun"
	"$mod, T, exec, kitty"
	"$mod, H, movefocus, l"
	"$mod, J, movefocus, d"
	"$mod, K, movefocus, u"
	"$mod, L, movefocus, r"
      ];

      "exec-once" = "waybar & kitty";
    };
  };

  programs.waybar.enable = true;
  services.mako.enable = true;
  programs.rofi = {
    enable = true;
    package = pkgs.rofi-wayland;
  };
}
