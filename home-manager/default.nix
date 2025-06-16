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
    brave
    catppuccin-cursors.mochaDark
    clipse
    fd
    font-awesome
    gimp3-with-plugins
    libreoffice
    libsForQt5.kdenlive
    ripgrep
    swww
    unzip
    waypaper
    yazi
    zip
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
