{ config, pkgs, inputs, ... }: {
  imports = [
    ./git.nix
    ./firefox.nix
    ./kitty.nix
    ./hyprland
    ./zsh.nix
    ./neovim
  ];

  home.packages = with pkgs; [
    zip
    unzip
    ripgrep
    fd
    font-awesome
    swww
    waypaper
    clipse
    wl-clipboard
    catppuccin-cursors.mochaDark
    libreoffice
    yazi
  ];

  gtk.enable = true;
  home.pointerCursor = {
    gtk.enable = true;
    x11.enable = true;
    package = pkgs.catppuccin-cursors.mochaDark;
    name = "catppuccin-mocha-dark-cursors";
    size = 24;
  };

  home.stateVersion = "25.05";
}
