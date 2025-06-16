{ config, pkgs, inputs, ... }: {
  imports = [
    ./audio.nix
    ./bluetooth.nix
    ./boot.nix
    ./devices.nix
    ./hardware-configuration.nix
    ./network.nix

    ../../modules/1password.nix
    ../../modules/ffmpeg.nix
    ../../modules/hyprland.nix
    ../../modules/i18n.nix
    ../../modules/lact.nix
    ../../modules/obs.nix
    ../../modules/printer.nix
    ../../modules/ssh.nix
    ../../modules/steam.nix
    ../../modules/users.nix

    inputs.home-manager.nixosModules.default
  ];

  environment.systemPackages = with pkgs; [
    vim
    wget
    libnotify
    hyprland
    htop
    nautilus
    usbutils
    pciutils
    lm_sensors
    overskride
  ];

  nixpkgs.config.allowUnfree = true;
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  nix.gc = {
    automatic = true;
    dates = "weekly";
    options = "--delete-older-than 7d";
  };
  system.stateVersion = "24.11";
  system.autoUpgrade = {
    enable = true;
  };
  boot.kernelPackages = pkgs.linuxPackages_latest;
}
