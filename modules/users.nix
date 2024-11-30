{ config, pkgs, inputs, ... }: {
  users.users.rcav = {
    isNormalUser = true;
    description = "Rcav";
    extraGroups = [ "networkmanager" "wheel" "docker" ];
    shell = pkgs.zsh;
    packages = with pkgs; [
      zsh
      docker
    ];
  };

  virtualisation.docker = {
    rootless = {
      enable = true;
      setSocketVariable = true;
    };
  };

  fonts.packages = with pkgs; [
    nerdfonts
  ];

  programs.zsh.enable = true;
  programs._1password.enable = true;
  programs._1password-gui = {
    enable = true;
    polkitPolicyOwners = [ "rcav" ];
  };

  services.displayManager = {
    autoLogin.enable = true;
    autoLogin.user = "rcav";
  };

  home-manager = {
    extraSpecialArgs = { inherit inputs; };
    backupFileExtension = "backup";
    users.rcav = (import ./home-manager);
  };
}
