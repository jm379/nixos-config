{ pkgs, lib, ...  }: {
  programs.waybar = {
    enable = true;
    style = ./style.css;
    settings = {
      mainBar = {
        height = 32;
        spacing = 4;
        modules-left = [
        ];
        modules-center = [ 
          "hyprland/window"
        ];
        modules-right = [
          "pulseaudio"
          "network"
          "bluetooth"
          # "temperature"
          "clock"
        ];

        "hyprland/window" = {
          icon = true;
          icon-size = 20;
        };

        pulseaudio = {
          format = "{icon} {volume}%";
          format-bluetooth = "{icon} {volume}%";
          format-icons = {
            default = [
                ""
                ""
                " "
            ];
            "bluez_output.40_35_E6_17_7B_55.1" = "󰂰";
          };
          on-click = "pwvucontrol";
        };

        network = {
          format-wifi = "{icon} {essid}";
          tooltip-format-wifi = "{icon} {essid} ({signalStrength}%)";
          format-icons = [
              "󰤯"
              "󰤟"
              "󰤢"
              "󰤢"
              "󰤨"
          ];
        };

        bluetooth = {
          format = " {num_connections}";
          format-disabled = "";
          format-connected = " {num_connections}";
          tooltip-format = "{controller_alias}";
          tooltip-format-connected = "{controller_alias}:\n{device_enumerate}";
          tooltip-format-enumerate-connected = "{device_alias}";
          tooltip-format-enumerate-connected-battery = "{device_alias} {device_battery_percentage}%";
          on-click = "overskride";
        };

        temperature = {
          format = "{temperatureC} °C";
        };

        clock = {
          format = "{:%H:%M}";
          tooltip = true;
          tooltip-format = "{:%d/%m/%Y}";
        };
      };
    };
  };
}
