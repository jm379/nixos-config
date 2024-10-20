{ config, pkgs, inputs, ... }: {
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.rcav = {
    isNormalUser = true;
    description = "Rcav";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [];
  };

  home-manager.users.rcav = (import ./home-manager);
}
