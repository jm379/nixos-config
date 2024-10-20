{ config, pkgs, ... }: {

  imports = [
    ./git.nix
    ./firefox.nix
  ];

  home.packages = with pkgs; [
    zip
    unzip
    lm_sensors
  ];

  home.stateVersion = "24.11";
}
