{ config, pkgs, inputs, ... }: {
  users.users.rcav = {
    isNormalUser = true;
    description = "Rcav";
    extraGroups = [ "networkmanager" "wheel" "docker" ];
    shell = pkgs.zsh;
    packages = with pkgs; [
      zsh
      docker
      jmtpfs
      glib
      eog
    ];
  };

  virtualisation.docker = {
    rootless = {
      enable = true;
      setSocketVariable = true;
    };
  };

  fonts.packages = with pkgs; [
    nerd-fonts._0xproto
    inter
  ];

  programs = {
    zsh.enable = true;
    _1password.enable = true;
    _1password-gui = {
      enable = true;
      polkitPolicyOwners = [ "rcav" ];
    };
  };

  services = {
    udisks2.enable = true;
    gvfs.enable = true;
    displayManager = {
      autoLogin.enable = true;
      autoLogin.user = "rcav";
    };
  };

  home-manager = {
    extraSpecialArgs = { inherit inputs; };
    backupFileExtension = "backup";
    users.rcav = (import ../home-manager);
  };
}
