{ config, pkgs, inputs, ... }: {

  imports = [
    ./git.nix
    ./firefox.nix
    ./hyprland.nix
  ];

  home.packages = with pkgs; [
    zip
    unzip
    neovim
  ];

  home.stateVersion = "24.11";
}
