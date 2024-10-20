{ config, pkgs, inputs, ... }: {

  imports = [
    ./git.nix
    ./firefox.nix
    ./kitty.nix
    ./hyprland.nix
    ./neovim
  ];

  home.packages = with pkgs; [
    zip
    unzip
    ripgrep
    fd
    zig
    font-awesome
  ];

  home.stateVersion = "24.05";
}
