{ config, pkgs, ... }: {
  security.rtkit.enable = true;

  services.pulseaudio.enable = false;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    extraConfig.pipewire."92-low-latency" = {
      "context.properties" = {
        "default.clock.rate" = 48000;
        "default.clock.quantum" = 1024;
        "default.clock.min-quantum" = 32;
        "default.clock.max-quantum" = 4096;
        "default.clock.allowed-rates" = [ 44100 48000 ];
      };
    };
  };

  environment.systemPackages = with pkgs; [ 
    pwvucontrol
    helvum
  ];
}
