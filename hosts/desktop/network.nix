{ config, pkgs, ... }: {

  networking = {
    hostName = "nixos-desktop";
    networkmanager.enable = true;
    firewall = {
      enable = true;
      allowedTCPPorts = [ 22 ];
    };
  };
}
