{ config, pkgs, inputs, ... }: {
  imports = [
    ./hardware-configuration.nix
    ./network.nix
    ./boot.nix

    ../../modules/audio.nix
    ../../modules/hyprland.nix
    ../../modules/i18n.nix
    ../../modules/lact.nix
    ../../modules/printer.nix
    ../../modules/ssh.nix
    ../../modules/steam.nix
    ../../modules/users.nix
    ../../modules/1password.nix
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
  system.stateVersion = "24.05";
  boot.kernelPackages = pkgs.linuxPackages_latest;
  hardware.bluetooth = {
    enable = true;
    powerOnBoot = true;
  };
  services.blueman.enable = true;
}
