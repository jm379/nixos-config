{ config, pkgs, ... }: {
  hardware.pulseaudio.enable = false;
  security.rtkit.enable = true;

  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    extraConfig.pipewire."92-low-latency" = {
      "context.properties" = {
        "default.clock.rate" = 48000;
        "default.clock.quantum" = 32;
        "default.clock.min-quantum" = 32;
        "default.clock.max-quantum" = 32;
        # "default.clock.quantum" = 2048;
        # "default.clock.min-quantum" = 2048;
        # "default.clock.max-quantum" = 4096;
      };
    };
  };

  environment.systemPackages = with pkgs; [ pwvucontrol ];
}
