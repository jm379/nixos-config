{ config, pkgs, inputs, ... }: {

  imports = [
    ./git.nix
    ./firefox.nix
    ./kitty.nix
    ./hyprland
    ./neovim
  ];

  home.packages = with pkgs; [
    zip
    unzip
    ripgrep
    fd
    zig
    cargo
    font-awesome
    catppuccin-cursors.mochaDark
    swww
    waypaper
    gccgo14
  ];

  home.pointerCursor = {
    gtk.enable = true;
    package = pkgs.catppuccin-cursors.mochaDark;
    name = "Catppuccing Mocha Dark";
    size = 14;
  };

  gtk.enable = true;

  home.stateVersion = "24.05";
}
