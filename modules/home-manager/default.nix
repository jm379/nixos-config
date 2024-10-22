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
    ruby
    nodejs_22
    gnumake
    cargo
    font-awesome
    jetbrains-mono
    catppuccin-cursors.mochaDark
    swww
    waypaper
    clipse
    wl-clipboard
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
