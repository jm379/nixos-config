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
    zig
    ruby
    nodejs_22
    gnumake
    cargo
    font-awesome
    swww
    waypaper
    clipse
    wl-clipboard
    gccgo14
    ffmpeg-full
    catppuccin-cursors.mochaDark
  ];

  home.pointerCursor = {
    gtk.enable = true;
    x11.enable = true;
    package = pkgs.catppuccin-cursors.mochaDark;
    name = "catppuccin-mocha-dark-cursors";
    size = 32;
  };

  gtk.enable = true;

  home.stateVersion = "24.11";
}
