{ config, pkgs, inputs, ... }: {

  users.users.rcav = {
    isNormalUser = true;
    description = "Rcav";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [];
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
