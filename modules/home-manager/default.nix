{ config, pkgs, inputs, ... }: {
  imports = [
    ./git.nix
    ./firefox.nix
  ];

  home.packages = with pkgs; [
    zip
    unzip
    neovim
    lm_sensors
  ];

  home.stateVersion = "24.11";
}
