{ config, pkgs, inputs, ... }: {

  imports = [
    ./git.nix
    ./firefox.nix
    ./kitty.nix
    ./obs.nix
    ./hyprland
    ./neovim # Move to NixVim
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
    ffmpeg-full
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
