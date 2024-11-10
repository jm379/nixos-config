{ config, pkgs, inputs, ... }: {

  users.users.rcav = {
    isNormalUser = true;
    description = "Rcav";
    extraGroups = [ "networkmanager" "wheel" ];
    shell = pkgs.zsh;
    packages = with pkgs; [
      zsh
    ];
  };

  fonts.packages = with pkgs; [
    nerdfonts
  ];

  programs.zsh.enable = true;

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
