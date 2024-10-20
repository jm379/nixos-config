{ config, pkgs, inputs, ... }: {
  imports = [
    ./hardware-configuration.nix
    ./network.nix
    ./boot.nix
    ../../modules/printer.nix
    ../../modules/plasma6.nix
    ../../modules/audio.nix
    ../../modules/i18n.nix
    ../../modules/users.nix
    inputs.home-manager.nixosModules.default
  ];

  environment.systemPackages = with pkgs; [
    vim
    wget
  ];

  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  system.stateVersion = "24.05";
}
