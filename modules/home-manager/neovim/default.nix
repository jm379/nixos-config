{ config, pkgs, ...}: {
  programs.neovim = {
    enable = true;
  };

  xdg.configFile.neovim = {
    source = ./config;
    target = "./nvim";
    recursive = true;
  };
}
